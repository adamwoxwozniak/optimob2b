import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optimob2b/shared/controllers/login.controller.dart';
import 'package:optimob2b/shared/helpers/utils.dart';

class LoginEmailPage extends GetView<LoginController> {
  LoginEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light, systemNavigationBarColor: Colors.transparent),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: getStatusBarTheme(context),
        centerTitle: true,
        title: Text(
          "Optimo365",
          style: GoogleFonts.poppins(fontSize: 28.h),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Lista możliwości",
                    style: GoogleFonts.poppins(fontSize: 12.h),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "adam@wox.com (ADMINISTRATOR)",
                    style: GoogleFonts.poppins(fontSize: 12.h),
                  ),
                  Text(
                    "wox@adam.com (PRACOWNIK)",
                    style: GoogleFonts.poppins(fontSize: 12.h),
                  ),
                  Text(
                    "vents@adam.wox (KONTRAHENT (VENTS))",
                    style: GoogleFonts.poppins(fontSize: 12.h),
                  ),
                  Text(
                    "carbotex@adam.wox (KONTRAHENT (CARBOTEX))",
                    style: GoogleFonts.poppins(fontSize: 12.h),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                autofocus: true,
                style: GoogleFonts.poppins(fontSize: 13.h),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.mail_outlined),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close_outlined),
                    onPressed: () => controller.emailController.text = "",
                  ),
                ),
                controller: controller.emailController,
              ),
              SizedBox(
                height: 10,
              ),
              Obx(
                () => !controller.emailLoading.value
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 320,
                            height: 40,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: ElevatedButton.icon(
                                icon: Icon(
                                  Icons.arrow_back_outlined,
                                ),
                                onPressed: () async => _login(context),
                                label: Text(
                                  "DALEJ",
                                  style: GoogleFonts.poppins(fontSize: 13.h),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [CircularProgressIndicator()],
                      ),
              ),
              Obx(
                () => Text(
                  controller.errorText.value,
                  style: GoogleFonts.poppins(color: Colors.red[700], fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _login(BuildContext context) async {
    if ([null, "", 0].contains(controller.emailController.text)) {
      controller.errorText("Pole Email nie może być puste.");
    } else {
      controller.emailLoading(true);
      controller.errorText("");
      var user = controller.currentUser.value.copyWith(email: controller.emailController.text);
      final result = await controller.emailLogin(user);
      if (result) {
        controller.emailLoading(false);
        controller.errorText("");
        Get.toNamed("/login");
      } else {
        controller.emailLoading(false);
        controller.errorText("Niepoprawny adres email");
      }
    }
  }
}
