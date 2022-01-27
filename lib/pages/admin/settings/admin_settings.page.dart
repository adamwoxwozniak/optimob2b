import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optimob2b/shared/controllers/theme.controller.dart';
import 'package:optimob2b/shared/helpers/utils.dart';

class AdminSettingsPage extends StatelessWidget {
  AdminSettingsPage({Key? key}) : super(key: key);

  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "KONFIGURACJA",
          style: GoogleFonts.poppins(fontSize: 18),
        ),
        systemOverlayStyle: getStatusBarTheme(context),
      ),
      body: Obx(
        () => SwitchListTile(
          onChanged: (value) {
            themeController.change();
          },
          value: themeController.selectedTheme.value != ThemeMode.light,
          title: themeController.selectedTheme.value == ThemeMode.light
              ? Text(
                  "WŁĄCZ TRYB CIEMNY",
                  style: GoogleFonts.poppins(),
                )
              : Text(
                  "WŁĄCZ TRYB JASNY",
                  style: GoogleFonts.poppins(),
                ),
          subtitle: Text(
            "Zmiana motywu aplikacji",
            style: GoogleFonts.poppins(),
          ),
          secondary: themeController.selectedTheme.value == ThemeMode.light ? Icon(Icons.dark_mode_outlined) : Icon(Icons.light_mode_outlined),
        ),
      ),
    );
  }
}
