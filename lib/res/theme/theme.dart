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
        headline2: TextStyle(
            fontSize: 16.0, color: roqquTextColor, fontWeight: FontWeight.w500),
        headline3: TextStyle(
            fontSize: 16.0, color: roqquBuyColor, fontWeight: FontWeight.w500),
        bodyText1: TextStyle(
            fontSize: 12.0,
            color: roqquSecondaryTextColor,
            fontWeight: FontWeight.w500),
        bodyText2: TextStyle(
          fontSize: 14.0,
          color: roqquSecondaryTextColor,
          fontWeight: FontWeight.w500,
        ),
        subtitle1: TextStyle(
          fontSize: 10.0,
          color: roqquSecondaryTextColor,
          fontWeight: FontWeight.w500,
        ),
        subtitle2: TextStyle(
          fontSize: 10.0,
          color: roqquBuyColor,
          fontWeight: FontWeight.w500,
        ),
        headline4: TextStyle(
          fontSize: 10.0,
          color: roqquVoltColor,
          fontWeight: FontWeight.w500,
        ),
        headline5: TextStyle(
          fontSize: 12.0,
          color: roqquVoltColor,
          fontWeight: FontWeight.w500,
        ),
        headline6: TextStyle(
          fontSize: 12.0,
          color: roqquTextColor,
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          fontSize: 12.0,
          color: roqquBuyColor,
          fontWeight: FontWeight.w500,
        ),
        button: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      iconTheme: const IconThemeData(
        color: roqquBlack,
        size: 24.0,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
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
      scaffoldBackgroundColor: roqquDarkBackgroundColor,
      backgroundColor: roqquDarkBackgroundColor,
      brightness: Brightness.dark,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: cardStrokeDarkColor,
      ),
      primaryColor: Colors.blue,
      accentColor: Colors.orange,
      canvasColor: Colors.black,
      cardColor: Colors.black,
      dividerColor: Colors.grey,
      focusColor: Colors.blue,
      hoverColor: Colors.grey[200],
      errorColor: Colors.red,
      appBarTheme: AppBarTheme(
        color: roqqueDarkColor,
        brightness: Brightness.dark,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            fontSize: 16.0,
            color: roqquDarkTextColor,
            fontWeight: FontWeight.w500),
        headline3: TextStyle(
            fontSize: 16.0,
            color: roqquDarkBuyColor,
            fontWeight: FontWeight.w500),
        bodyText1: TextStyle(
            fontSize: 12.0,
            color: roqquDarkSecondaryTextColor,
            fontWeight: FontWeight.w500),
        bodyText2: TextStyle(
          fontSize: 14.0,
          color: roqquDarkSecondaryTextColor,
          fontWeight: FontWeight.w500,
        ),
        subtitle1: TextStyle(
          fontSize: 10.0,
          color: roqquDarkSecondaryTextColor,
          fontWeight: FontWeight.w500,
        ),
        subtitle2: TextStyle(
          fontSize: 10.0,
          color: roqquDarkBuyColor,
          fontWeight: FontWeight.w500,
        ),
        headline4: TextStyle(
          fontSize: 10.0,
          color: roqquDarkVoltColor,
          fontWeight: FontWeight.w500,
        ),
        headline5: TextStyle(
          fontSize: 12.0,
          color: roqquDarkVoltColor,
          fontWeight: FontWeight.w500,
        ),
        headline6: TextStyle(
          fontSize: 12.0,
          color: roqquDarkTextColor,
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          fontSize: 12.0,
          color: roqquDarkBuyColor,
          fontWeight: FontWeight.w500,
        ),
        button: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      iconTheme: const IconThemeData(
        color: roqquWhite,
        size: 24.0,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
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
