import '../../models/all_property_model.dart';
import '../../models/user_property_model.dart';
import '../../repository/property/property_http_service.dart';
import '../../res/import/import.dart';
import '../remote/property/property_service.dart';

class PropertyManagementProvider extends ChangeNotifier {
  static PropertyManagementProvider? _instance;
  static late PropertyService service;
  static late ApiService apiService;

  PropertyManagementProvider() {
    service = PropertyHttpService();
    apiService = ApiServiceImpl();
  }

  static PropertyManagementProvider get instance {
    if (_instance == null) {
      _instance = PropertyManagementProvider();
    }
    return _instance!;
  }

  String? _curroqquddress;

  String? get curroqquddress => _curroqquddress;

  String? _currentstate;

  String? get currentstate => _currentstate;

  Position? _currentPosition;

  Position? get currentPosition => _currentPosition;

  bool isLoading = false;
  List<XFile> imageFileList = [];
  List<String> imageFilePathList = [];

  /// getAllProperty
  late AllPropertyModel _getAllResponse;

  AllPropertyModel get getAllResponse => _getAllResponse;

  bool _getAllrBusy = false;

  bool get getAllrBusy => _getAllrBusy;

  /// getUserProperty
  late UserPropertyModel _userPropertyModel;

  UserPropertyModel get userPropertyModel => _userPropertyModel;

  bool _getUserBusy = false;

  bool get getUserBusy => _getUserBusy;

  /// addProperty
  // late AllPropertyModel _getAllResponse;
  // AllPropertyModel get getAllResponse => _getAllResponse;

  bool _addpropertyrBusy = false;

  bool get addpropertyrBusy => _addpropertyrBusy;

  Future<void> addNewProperty({
    required Map<String, dynamic> data,
    required BuildContext context,
    VoidCallback? onFailure,
    VoidCallback? onSuccess,
  }) async {
    try {
      _addpropertyrBusy = true;
      notifyListeners();

      final res = await service.addNewProperty(data: data);
      if (res.statusCode == 200 || res.statusCode == 201) {
        // _registerResponse = RegisterModel.fromJson(res.data);

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
      _addpropertyrBusy = false;
      notifyListeners();
    }
  }

  ///  properties

  List<PropertyData> _nearbyProperty = [];

  List<PropertyData> get nearbyProperty => _nearbyProperty;

  getAllProperty(context) async {
    try {
      _getAllrBusy = true;
      notifyListeners();

      final res = await service.getAllProperty();
      if (res.statusCode == 200 || res.statusCode == 201) {
        print(res.data);
        _getAllResponse = AllPropertyModel.fromJson(res.data);
        await LocalStorage.setItem("allproperties", true);
        _nearbyProperty = List.from(_getAllResponse.data!.where((element) =>
            element.propertyLocation
                .toString()
                .toLowerCase()
                .contains(_currentstate.toString().toLowerCase())));
        notifyListeners();
      }

      return _getAllResponse;
      // ignore: unused_catch_clause
    } on SocketException catch (e) {
      showErrorToast(message: "No internet Connection");
    } on DioError catch (e) {
      apiService.handlingError(e: e, title: "Error");

      return null;
    } finally {
      _getAllrBusy = false;
      notifyListeners();
    }
  }

  getSingleProperty(context) async {
    try {
      _getAllrBusy = true;
      notifyListeners();

      final res = await service.getSingleProperty();
      if (res.statusCode == 200 || res.statusCode == 201) {
        _userPropertyModel = UserPropertyModel.fromJson(res.data);
      }

      return _userPropertyModel;
      // ignore: unused_catch_clause
    } on SocketException catch (e) {
      showErrorToast(message: "No internet Connection");
    } on DioError catch (e) {
      apiService.handlingError(e: e, title: "Error");

      return null;
    } finally {
      _getAllrBusy = false;
      notifyListeners();
    }
  }

  getUserProperty(context) async {
    try {
      _getUserBusy = true;
      notifyListeners();

      final res = await service.getUserProperty();
      if (res.statusCode == 200 || res.statusCode == 201) {
        _userPropertyModel = UserPropertyModel.fromJson(res.data);
        notifyListeners();
      }

      return _userPropertyModel;
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

  Future<bool> _handleLocationPermission(context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      showLoaderDialog(context, 'Access Denied',
          'Location services are disabled. Please enable the services', () {
        Navigator.pop(context);
      });
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        showLoaderDialog(
            context, 'Access Denied', 'Location services are disabled', () {
          Navigator.pop(context);
        });
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      showLoaderDialog(context, 'Access Denied',
          'Location permissions are permanently denied, we cannot request permissions.',
          () {
        Navigator.pop(context);
      });
      return false;
    }

    return true;
  }

  Future<void> getCurrentPosition(context) async {
    final hasPermission = await _handleLocationPermission(context);

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      _currentPosition = position;
      print(' location $_currentPosition');
      _getAddressFromLatLng(_currentPosition!);
      notifyListeners();
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
            _currentPosition!.latitude, _currentPosition!.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      _curroqquddress = ' ${place.subAdministrativeArea}';
      _currentstate = '${place.administrativeArea}';
      print(' location $_curroqquddress');
      notifyListeners();
    }).catchError((e) {
      apiService.handlingError(e: e, title: "Error");
    });
  }
}
