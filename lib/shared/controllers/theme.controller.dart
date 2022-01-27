import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:optimob2b/themes/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  SharedPreferences prefs = Get.find();
  var selectedTheme = ThemeMode.light.obs;

  init() {
    final theme = prefs.getString("theme");
    if (theme != null) {
      theme == "light" ? selectedTheme(ThemeMode.light) : selectedTheme(ThemeMode.dark);
    } else {
      prefs.setString("theme", "light");
      selectedTheme(ThemeMode.light);
    }
  }

  change() {
    if (selectedTheme.value == ThemeMode.light) {
      selectedTheme(ThemeMode.dark);
      prefs.setString("theme", "dark");
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          systemNavigationBarColor: darkTheme.scaffoldBackgroundColor,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
      );
    } else {
      selectedTheme(ThemeMode.light);
      prefs.setString("theme", "light");

      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          systemNavigationBarColor: lightTheme.scaffoldBackgroundColor,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      );
    }
  }
}
