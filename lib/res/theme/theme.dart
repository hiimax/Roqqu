import '../import/import.dart';

class roqquhelper {
  roqquhelper._();

  ///Light Theme
  static ThemeData lightTheme() {
    final base = ThemeData.light();
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: roqquBackgroundColor,
      backgroundColor: roqquBackgroundColor,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      accentColor: Colors.orange,
      canvasColor: Colors.white,
      cardColor: Colors.white,
      dividerColor: Colors.grey,
      focusColor: Colors.blue,
      hoverColor: Colors.grey[200],
      errorColor: Colors.red,
      appBarTheme: AppBarTheme(
        color: roqquWhite,
        brightness: Brightness.light,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        headline2:  TextStyle(fontSize: 18.0,color: roqquTextColor, fontWeight: FontWeight.w500),
        headline3:  TextStyle(fontSize: 18.0,color: roqquBuyColor, fontWeight: FontWeight.w500),
        bodyText1: TextStyle(fontSize: 12.0,color: roqquSecondaryTextColor, fontWeight: FontWeight.w500),
        bodyText2: TextStyle(fontSize: 14.0,color: roqquSecondaryTextColor, fontWeight: FontWeight.w500,),
        button: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      iconTheme: IconThemeData(
        color: roqquBlack,
        size: 24.0,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }

  ///Dark Theme
  static ThemeData darkTheme() {
    final base = ThemeData.light();
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: roqquBackgroundColor,
      backgroundColor: roqquBackgroundColor,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      accentColor: Colors.orange,
      canvasColor: Colors.white,
      cardColor: Colors.white,
      dividerColor: Colors.grey,
      focusColor: Colors.blue,
      hoverColor: Colors.grey[200],
      errorColor: Colors.red,
      appBarTheme: AppBarTheme(
        color: roqquWhite,
        elevation:0,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyText1: TextStyle(fontSize: 16.0),
        button: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      iconTheme: IconThemeData(
        color: Colors.blue,
        size: 24.0,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }



}


