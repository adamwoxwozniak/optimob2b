import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optimob2b/shared/controllers/theme.controller.dart';
import 'package:optimob2b/themes/themes.dart';
import 'package:intl/intl.dart';

final numberFormatter = NumberFormat("#,##0.00", "pl_PL");
final dateFormatter = DateFormat("dd.MM.yyyy");

final ThemeController themeController = Get.find();

SystemUiOverlayStyle getStatusBarTheme(BuildContext context) {
  if (!context.isDarkMode) {
    return SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: lightTheme.scaffoldBackgroundColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark);
  } else {
    return SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: darkTheme.scaffoldBackgroundColor,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light);
  }
}

Widget connectionError() {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "¯\\_(ツ)_/¯",
          style: GoogleFonts.roboto(fontSize: 36, color: Colors.red[700]),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Problem z pobieraniem danych z serwera",
          style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.red[700]),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: Text(
            "Możesz nie mieć dostępu do internetu lub serwer jest chwilowo niedostępny.",
            style: GoogleFonts.poppins(color: Colors.red[700]),
          ),
        ),
      ],
    ),
  );
}
