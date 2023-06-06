
import '../../res/import/import.dart';


final navigatorKey = GlobalKey<NavigatorState>();
var logger = Logger();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory? dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  await Hive.openBox("app_data");
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  Future.delayed(Duration.zero).then((value) async {
    String? deviceId = await PlatformDeviceId.getDeviceId;
    await LocalStorage.setItem("device_token", '$deviceId');
    print('device token $value');
  });
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: MultiProvider(
        providers: providers,
        child: Consumer<ThemeProvider>(
          builder: (context, provider, child) {
            return GetMaterialApp(
              builder: (BuildContext context, Widget? widget) {
                ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
                  return CustomError(errorDetails: errorDetails);
                };
                return widget!;
              },

              debugShowCheckedModeBanner: false,
              title: AppName,
              theme: provider
                  .isDarkTheme
                  ? roqquhelper.darkTheme()
                  : roqquhelper.lightTheme(),
              initialRoute: '/',
              navigatorKey: navigatorKey,
              home: Builder(builder: (context) {
                SizeConfig.init(context);
                return const SplashScreen();
              }),
            );
          },
        ),
      ),
    );
  }
}
