import '../../models/register_model.dart';
import '../../models/sendotp_model.dart';
import '../../models/user_balance_model.dart';
import '../../models/user_profile_model.dart';
import '../../res/import/import.dart';

class AuthenticationProvider extends ChangeNotifier with Validators {
  static AuthenticationProvider? _instance;
  static late AuthService service;
  static late ApiService apiService;

  AuthenticationProvider() {
    service = AuthHttpService();
    apiService = ApiServiceImpl();
  }

  static AuthenticationProvider get instance {
    if (_instance == null) {
      _instance = AuthenticationProvider();
    }
    return _instance!;
  }

  bool isLoading = false;

  final LocalAuthentication auth = LocalAuthentication();
  bool? _canCheckBiometrics;
  bool authenticated = false;
  bool enabledFingerprint = false;

  /// register
  late RegisterModel _registerResponse;

  RegisterModel get registerResponse => _registerResponse;

  bool _registerBusy = false;

  bool get registerBusy => _registerBusy;

  TextEditingController _device_id = TextEditingController();

  TextEditingController get device_id => _device_id;

  TextEditingController _firstname = TextEditingController();

  TextEditingController get firstname => _firstname;

  TextEditingController _lastname = TextEditingController();

  TextEditingController get lastname => _lastname;

  TextEditingController _email = TextEditingController();

  TextEditingController get email => _email;

  TextEditingController _phone_number = TextEditingController();

  TextEditingController get phone_number => _phone_number;

  TextEditingController _password = TextEditingController();

  TextEditingController get password => _password;

  TextEditingController _country = TextEditingController();

  TextEditingController get country => _country;

  ///login
  bool _loginBusy = false;

  bool get loginBusy => _loginBusy;

  late LoginModel _loginResponse;

  LoginModel get loginResponse => _loginResponse;

  ///register
  bool _resetPassBusy = false;

  bool get resetPassBusy => _resetPassBusy;

  ///user profile
  late UserProfileModel _fetchUserResponse;

  UserProfileModel get fetchUserResponse => _fetchUserResponse;

  bool _getUserBusy = false;

  bool get getUserBusy => _getUserBusy;

  ///user balance
  late UserBalanceModel _fetchUserBalance;

  UserBalanceModel get fetchUserBalance => _fetchUserBalance;

  bool _fetchUserBalanceBusy = false;

  bool get fetchUserBalanceBusy => _fetchUserBalanceBusy;

  ///send otp
  late SendOTPModel _sendOtpResponse;

  SendOTPModel get sendOtpResponse => _sendOtpResponse;
  bool _sendBusy = false;

  bool get sendBusy => _sendBusy;

  ///verify otp
  bool _verifyOtpBusy = false;

  bool get verifyOtpBusy => _verifyOtpBusy;

  ///register
  Future<void> register({
    required Map<String, dynamic> data,
    required BuildContext context,
    VoidCallback? onFailure,
    VoidCallback? onSuccess,
  }) async {
    try {
      _registerBusy = true;
      notifyListeners();

      final res = await service.register(data: data);
      if (res.statusCode == 200 || res.statusCode == 201) {
        _registerResponse = RegisterModel.fromJson(res.data);

        await LocalStorage.setItem("token", _registerResponse.data!.apiToken);
        await SendOtp(
          context,
          onSuccess: () {
            showLoaderDialog(context, 'Account creation Successful',
                'Please verify your phone number', () {
            });
          },
          phoneNumber: _registerResponse.data!.phoneNumber.toString(),
        );
        notifyListeners();
        onSuccess?.call();

        // navigateReplaceTo(context, MainScreen());
      }
    } on DioError catch (e) {
      apiService.handlingError(e: e.response, title: "Error");
      if (e.response.toString().contains('not verified')) {
        onFailure?.call();
      }
    } finally {
      _registerBusy = false;
      notifyListeners();
    }
  }

  ///login
  Future<void> login({
    required Map<String, dynamic> data,
    required BuildContext context,
    VoidCallback? onFailure,
    VoidCallback? onSuccess,
  }) async {
    try {
      _loginBusy = true;
      notifyListeners();

      final res = await service.login(data: data);
      if (res.statusCode == 200 || res.statusCode == 201) {
        _loginResponse = LoginModel.fromJson(res.data);

        await LocalStorage.setItem("token", _loginResponse.data!.apiToken);
        // await LocalStorage.setItem("email", _loginemail.text);
        // await LocalStorage.setItem("password", _loginpassword.text);
        await fetchUser(context);
        onSuccess?.call();

        // navigateReplaceTo(context, MainScreen());
      }
    } on DioError catch (e) {
      apiService.handlingError(e: e.response, title: "Error");
      if (e.response.toString().contains('not verified')) {
        onFailure?.call();
      }
    } finally {
      _loginBusy = false;
      notifyListeners();
    }
  }

  /// local authentication

  Future<void> enablefingerprint(context) async {
    final prefs = await SharedPreferences.getInstance();

    checkBiometrics();

    // checkBiometrics().then((_) {});
    if (_canCheckBiometrics == true) {
      try {
        notifyListeners();
        authenticated = await auth.authenticate(
          localizedReason: 'Scan your fingerprint to authenticate',
          options: const AuthenticationOptions(
            stickyAuth: true,
            biometricOnly: true,
          ),
        );
        notifyListeners();
        if (authenticated == true) {
          prefs.setBool('fingerprint', true);
          showLoaderDialog(context, 'Fingerprint Activation Successful',
              'Hey! ${_registerResponse.data!.firstName} you can now use fingerprint login',
              () {
            Navigator.pop(context);
          });
        }
      } on PlatformException catch (e) {
        print(e);
        prefs.setBool('fingerprint', false);
        notifyListeners();
        return;
      }
      notifyListeners();
    } else {
      prefs.setBool('fingerprint', false);
      print('cant authenticate');
    }
  }

  Future<void> getfingerprint() async {
    final prefs = await SharedPreferences.getInstance();
    enabledFingerprint = prefs.getBool('fingerprint')!;
    print('enabledFingerprint $enabledFingerprint');
    notifyListeners();
  }

  Future<void> checkBiometrics() async {
    bool? canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.isDeviceSupported();
    } on PlatformException catch (e, s) {
      canCheckBiometrics = false;
      print(e);
      print(s);
    }
    _canCheckBiometrics = canCheckBiometrics;

    notifyListeners();
  }

  Future<void> authenticateWithBiometrics(context) async {
    checkBiometrics();

    // checkBiometrics().then((_) {});
    if (_canCheckBiometrics == true) {
      try {
        notifyListeners();
        authenticated = await auth.authenticate(
          localizedReason: 'Scan your fingerprint to authenticate',
          options: const AuthenticationOptions(
            stickyAuth: true,
            biometricOnly: true,
            useErrorDialogs: true,
            sensitiveTransaction: true,
          ),
        );
        notifyListeners();
        if (authenticated == true) {
          String? _email = await LocalStorage.getItem('email');
          String? _password = await LocalStorage.getItem('password');
          String? device_token = await LocalStorage.getItem('device_token');
          locallogin(
              data: {
                'email': _email,
                'password': _password,
                'device_token': device_token,
              },
              context: context,
              onSuccess: () {
                showLoaderDialog(context, 'Login Successful',
                    'Hey! ${_loginResponse.data!.firstName} Welcome to roqqu',
                    () {

                });
              });
        }
      } on PlatformException catch (e) {
        print(e);

        notifyListeners();
        return;
      }

      final String message = authenticated ? 'Authorized' : 'Not Authorized';

      print('message $message');
      notifyListeners();
    } else {
      print('cant authenticate');
    }
  }

  Future<void> locallogin({
    required Map<String, dynamic> data,
    required BuildContext context,
    VoidCallback? onFailure,
    VoidCallback? onSuccess,
  }) async {
    try {
      _loginBusy = true;
      notifyListeners();

      final res = await service.login(data: data);
      if (res.statusCode == 200 || res.statusCode == 201) {
        _loginResponse = LoginModel.fromJson(res.data);

        await LocalStorage.setItem("token", _loginResponse.data!.apiToken);

        await fetchUser(context);
        onSuccess?.call();

        // navigateReplaceTo(context, MainScreen());
      }
    } on DioError catch (e) {
      apiService.handlingError(e: e.response, title: "Error");
      if (e.response.toString().contains('not verified')) {
        onFailure?.call();
      }
    } finally {
      _loginBusy = false;
      notifyListeners();
    }
  }

  ///reset password

  TextEditingController _resetemailController = TextEditingController();

  TextEditingController get resetemailController => _resetemailController;

  Future<void> resetPassword(
      {required String email, required VoidCallback onSuccess}) async {
    try {
      _registerBusy = true;
      notifyListeners();

      final res = await service.resetPassword(email: email);

      if (res.statusCode == 200 || res.statusCode == 201) {
        // await fetchUser(context: context);
        showSuccessToast(message: res.data['success']);
        onSuccess.call();
      }
    } on DioError catch (e) {
      apiService.handlingError(e: e.response!.data, title: "Error");
    } finally {
      _registerBusy = false;
      notifyListeners();
    }
  }

  ///user profile

  fetchUser(context) async {
    try {
      _getUserBusy = true;
      notifyListeners();

      final res = await service.fetchUser();
      if (res.statusCode == 200 || res.statusCode == 201) {
        _fetchUserResponse = UserProfileModel.fromJson(res.data);

        await LocalStorage.setItem("loggedIn", true);
      }

      return _fetchUserResponse;
      // ignore: unused_catch_clause
    } on SocketException catch (e) {
      showErrorToast(message: "No internet Connection");
    } on DioError catch (e) {
      apiService.handlingError(e: e, title: "Error");

      return null;
    } finally {
      _getUserBusy = false;
      notifyListeners();
    }
  }

  /// user balance

  fetchUserWalletBalance(context) async {
    try {
      _fetchUserBalanceBusy = true;
      notifyListeners();

      final res = await service.fetchUserWalletBalance();
      if (res.statusCode == 200 || res.statusCode == 201) {
        _fetchUserBalance = UserBalanceModel.fromJson(res.data);
      }

      return _fetchUserBalance;
      // ignore: unused_catch_clause
    } on SocketException catch (e) {
      showErrorToast(message: "No internet Connection");
    } on DioError catch (e) {
      apiService.handlingError(e: e, title: "Error");

      return null;
    } finally {
      _fetchUserBalanceBusy = false;
      notifyListeners();
    }
  }

  ///send otp
  Future<void> SendOtp(context,
      {required String phoneNumber, required VoidCallback onSuccess}) async {
    try {
      _sendBusy = true;
      notifyListeners();

      final res = await service.sendOtp(phoneNumber: phoneNumber);

      if (res.statusCode == 200 || res.statusCode == 201) {
        _sendOtpResponse = SendOTPModel.fromJson(res.data);

        onSuccess.call();
      }
    } on DioError catch (e) {
      apiService.handlingError(e: e.response!.data, title: "Error");
    } finally {
      _sendBusy = false;
      notifyListeners();
    }
  }

  ///verify otp

  Future<void> VerifyOtp({
    required Map<String, dynamic> data,
    required BuildContext context,
    VoidCallback? onFailure,
    VoidCallback? onSuccess,
  }) async {
    try {
      _verifyOtpBusy = true;
      notifyListeners();

      final res = await service.verifyOtp(data: data);
      if (res.statusCode == 200 || res.statusCode == 201) {
        onSuccess?.call();

        // navigateReplaceTo(context, MainScreen());
      }
    } on DioError catch (e) {
      apiService.handlingError(e: e.response, title: "Error");
      if (e.response.toString().contains('not verified')) {
        onFailure?.call();
      }
    } finally {
      _verifyOtpBusy = false;
      notifyListeners();
    }
  }

  /// otp animation

  int _start = 30;
  Timer? _timer;

  int get start => _start;

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start > 0) {
        _start--;
        notifyListeners();
      } else {
        _timer!.cancel();
        notifyListeners();
      }
    });
  }

  void resendCode({required Function() resendOtp}) {
    resendOtp();
    _start = 30;
    notifyListeners();
    startTimer();
    // Add code here to send the verification code again
  }
}
