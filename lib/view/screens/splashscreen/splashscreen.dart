import 'package:flutter/cupertino.dart';
import '../../../res/import/import.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      // SharedPreferences preferences = await SharedPreferences.getInstance();
      //
      // await preferences.setInt('initScreen', 1);

      //if already shown -> 1 else 0
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeInTranslate(
                direction: FadeInDirection.left,
                duration: Duration(seconds: 3),
                child: Image.asset(
                  'assets/images/Logomark.png',
                  // color: RentaMainColor,
                ),
              ),
              XMargin(20),
              FadeInTranslate(
                direction: FadeInDirection.right,
                duration: Duration(seconds: 3),
                child: Image.asset(
                  'assets/images/Logotype.png',
                  // color: RentaMainColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
