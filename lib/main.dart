import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:optimob2b/routes.dart';
import 'package:optimob2b/shared/controllers/session.controller.dart';
import 'package:optimob2b/shared/controllers/theme.controller.dart';
import 'package:optimob2b/shared/helpers/bindings.dart';
import 'package:optimob2b/themes/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared/helpers/http_overrides.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  Paint.enableDithering = true;

  await Get.putAsync<SharedPreferences>(() async => await SharedPreferences.getInstance(), permanent: true);
  Get.put(SessionController());
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({Key? key}) : super(key: key);

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    if (context.isDarkMode) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          systemNavigationBarColor: darkTheme.scaffoldBackgroundColor,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
      );
    } else {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          systemNavigationBarColor: lightTheme.scaffoldBackgroundColor,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      );
    }
    themeController.init();
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      builder: () => Obx(
        () => GetMaterialApp(
          title: 'Flutter Demo',
          initialRoute: "/",
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeController.selectedTheme.value,
          getPages: AppRouter.routes,
          initialBinding: MainBindings(),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [Locale("pl")],
        ),
      ),
    );
  }
}
