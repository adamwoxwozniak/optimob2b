import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// const int primaryColor = 0xFF5A4CA8;
// final MaterialColor primarySwatch = MaterialColor(primaryColor, <int, Color>{
//   50: Color(0xFFEBEAF5),
//   100: Color(0xFFCEC9E5),
//   200: Color(0xFFADA6D4),
//   300: Color(0xFF8C82C2),
//   400: Color(0xFF7367B5),
//   500: Color(primaryColor),
//   600: Color(0xFF5245A0),
//   700: Color(0xFF483C97),
//   800: Color(0xFF3F338D),
//   900: Color(0xFF2E247D),
// });

const int itemBackground = 0xFFfafcfd;
const int itemBackgroundDark = 0xFF262d32;
const int primaryColor = 0xFF5058BD;
final MaterialColor primarySwatch = MaterialColor(primaryColor, <int, Color>{
  50: Color(0xFFEAEBF7),
  100: Color(0xFFCBCDEB),
  200: Color(0xFFA8ACDE),
  300: Color(0xFF858AD1),
  400: Color(0xFF6A71C7),
  500: Color(primaryColor),
  600: Color(0xFF4950B7),
  700: Color(0xFF4047AE),
  800: Color(0xFF373DA6),
  900: Color(0xFF272D98),
});

const int paletteColor1 = 0xFFBC56B3;
const int paletteColor2 = 0xFFFD6394;
const int paletteColor3 = 0xFFFF8C72;
const int paletteColor4 = 0xFFFFC25D;
const int paletteColor5 = 0xFFF9F871;
const int paletteColor6 = 0xFF0070CB;
const int paletteColor7 = 0xFF008EB4;
const int paletteColor8 = 0xFF009F7E;

// const int primaryColor = 0xFF6E70C5;
// final MaterialColor primarySwatch = MaterialColor(primaryColor, <int, Color>{
//   50: Color(0xFFEEEEF8),
//   100: Color(0xFFD4D4EE),
//   200: Color(0xFFB7B8E2),
//   300: Color(0xFF9A9BD6),
//   400: Color(0xFF8485CE),
//   500: Color(primaryColor),
//   600: Color(0xFF6668BF),
//   700: Color(0xFF5B5DB8),
//   800: Color(0xFF5153B0),
//   900: Color(0xFF3F41A3),
// });

const int accentColor = 0xFFFFFFFF;
final MaterialColor accentSwatch = MaterialColor(accentColor, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(accentColor),
  400: Color(0xFFFFFBF7),
  700: Color(0xFFFFEFDE),
});

const int buforColor = 0xFF8CC3A0;
const int cancelColor = 0xFFD17484;
const int accent = 0xFF6D97C9;

const int darkPrimaryColor = 0xFFC4CAEA;
final MaterialColor darkPrimarySwatch = MaterialColor(darkPrimaryColor, <int, Color>{
  50: Color(0xFFF8F9FC),
  100: Color(0xFFEDEFF9),
  200: Color(0xFFE2E5F5),
  300: Color(0xFFD6DAF0),
  400: Color(0xFFCDD2ED),
  500: Color(darkPrimaryColor),
  600: Color(0xFFBEC5E7),
  700: Color(0xFFB6BDE4),
  800: Color(0xFFAFB7E1),
  900: Color(0xFFA2ABDB),
});

final MaterialColor darkAccentSwatch = MaterialColor(darkAccent, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(darkAccent),
  400: Color(0xFFFFFFFF),
  700: Color(0xFFFFFFFF),
});
const int darkAccent = 0xFFFFFFFF;

final ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: primarySwatch,
  // scaffoldBackgroundColor: Color(0xFFedf5f9),
  scaffoldBackgroundColor: primarySwatch[50],
  cardTheme: CardTheme(color: Color(itemBackground)),
  tabBarTheme: TabBarTheme(
    labelColor: Color(primaryColor),
    labelStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),
    unselectedLabelStyle: GoogleFonts.poppins(fontSize: 13),
    unselectedLabelColor: Colors.black54,
    indicator: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: primarySwatch[300]!, width: 2, style: BorderStyle.solid),
      ),
    ),
  ),
  appBarTheme: AppBarTheme(
    foregroundColor: Color(primaryColor),
    backgroundColor: Colors.transparent,
    elevation: 0,
    // shadowColor: primarySwatch[800]!.withOpacity(0.5),
    titleTextStyle: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Color(primaryColor),
    ),
    actionsIconTheme: IconThemeData(
      color: Color(primaryColor),
    ),
  ),
  listTileTheme: ListTileThemeData(dense: true),
  inputDecorationTheme: InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    floatingLabelStyle: GoogleFonts.poppins(color: Color(primaryColor)),
    hintStyle: GoogleFonts.poppins(),
    prefixIconColor: Color(primaryColor),
    suffixIconColor: Color(primaryColor),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black12,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    isDense: true,
    fillColor: Color(itemBackground),
    filled: true,
    labelStyle: GoogleFonts.poppins(height: 0.8),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black12,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Color(primaryColor),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all<double?>(
        0,
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Color(primaryColor),
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        Colors.white,
      ),
      shadowColor: MaterialStateProperty.all<Color>(
        Color(primaryColor),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(GoogleFonts.poppins(fontSize: 12)),
      foregroundColor: MaterialStateProperty.all<Color>(
        Color(primaryColor),
      ),
    ),
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(color: Color(primaryColor)),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedItemColor: Colors.black54,
    selectedItemColor: Color(primaryColor),
    unselectedLabelStyle: GoogleFonts.poppins(fontSize: 10, color: Colors.black54),
    selectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 12),
    selectedIconTheme: IconThemeData(color: Color(primaryColor), size: 28),
    elevation: 10,
  ),
);
final ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: darkPrimarySwatch,
  colorScheme: ColorScheme.dark(secondary: primarySwatch[100]!),
  scaffoldBackgroundColor: Color(0xff0b0e1f),
  cardTheme: CardTheme(color: Color(0xff121533)),
  tabBarTheme: TabBarTheme(
    labelColor: Color(darkPrimaryColor),
    labelStyle: GoogleFonts.poppins(),
    indicatorSize: TabBarIndicatorSize.label,
    indicator: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Color(darkPrimaryColor), width: 0, style: BorderStyle.none),
      ),
    ),
  ),
  appBarTheme: AppBarTheme(
    foregroundColor: Colors.white,
    backgroundColor: Colors.transparent,
    elevation: 0,
    titleTextStyle: GoogleFonts.poppins(
      fontSize: 21,
      fontWeight: FontWeight.w600,
      color: Color(
        darkPrimaryColor,
      ),
    ),
    actionsIconTheme: IconThemeData(
      color: Color(
        darkPrimaryColor,
      ),
    ),
  ),
  listTileTheme: ListTileThemeData(dense: true),
  toggleableActiveColor: primarySwatch[100],
  inputDecorationTheme: InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    floatingLabelStyle: GoogleFonts.poppins(color: Color(darkPrimaryColor)),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white30,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    isDense: true,
    fillColor: Colors.black26,
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(darkPrimaryColor),
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Color(darkPrimaryColor),
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        Colors.black,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(
        Color(darkPrimaryColor),
      ),
    ),
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(color: Color(darkPrimaryColor)),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedItemColor: Colors.white70,
    selectedItemColor: Color(darkPrimaryColor),
    unselectedLabelStyle: GoogleFonts.poppins(fontSize: 10),
    selectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 12),
    selectedIconTheme: IconThemeData(color: Color(darkPrimaryColor), size: 28),
    elevation: 0,
  ),
);
