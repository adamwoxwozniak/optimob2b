import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optimob2b/shared/controllers/login.controller.dart';
import 'package:optimob2b/shared/helpers/utils.dart';

class LoginPasswordPage extends GetView<LoginController> {
  LoginPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: SizedBox(),
        systemOverlayStyle: getStatusBarTheme(context),
        centerTitle: true,
        title: Text(
          "Optimo365",
          style: GoogleFonts.poppins(fontSize: 28.h),
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          controller.clearState();
          return true;
        },
        child: _passwordViewBuilder(context),
      ),
    );
  }

  Widget _passwordViewBuilder(BuildContext context) {
    switch (controller.currentUser.value.role) {
      case "ADMIN":
        return Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          "Witaj " + controller.currentUser.value.name,
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 21.h, color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  controller.currentUser.value.email,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 12.h),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  autofocus: true,
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Hasło", prefixIcon: Icon(Icons.vpn_key_outlined)),
                  controller: controller.passwordController,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    style: ListTileStyle.list,
                    tileColor: Theme.of(context).cardTheme.color,
                    title: Text(
                      "FIRMA",
                      style: GoogleFonts.poppins(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w600),
                    ),
                    trailing: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          underline: SizedBox(),
                          autofocus: false,
                          borderRadius: BorderRadius.circular(0),
                          dropdownColor: Colors.white,
                          icon: Icon(Icons.arrow_drop_down),
                          isDense: false,
                          value: "TRON2018",
                          items: <String>["Firma Demo", "Chemtextil", "TRON2018", "TRON2011"].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) => print(value)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Obx(
                  () => !controller.passwordLoading.value
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 320,
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.lock_open),
                                onPressed: () => _loginUser(context),
                                label: Text(
                                  "ZALOGUJ",
                                ),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [CircularProgressIndicator()],
                        ),
                ),
              ],
            ),
          ),
        );
      case "WORKER":
        return Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          "Witaj " + controller.currentUser.value.name,
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 21, color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  controller.currentUser.value.email,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "TRON2018",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(1, -1),
                      )
                    ],
                  ),
                  child: TextField(
                    autofocus: true,
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Hasło", prefixIcon: Icon(Icons.vpn_key_outlined)),
                    controller: controller.passwordController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => !controller.passwordLoading.value
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 320,
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.lock_open),
                                onPressed: () => _loginUser(context),
                                label: Text(
                                  "ZALOGUJ",
                                ),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [CircularProgressIndicator()],
                        ),
                ),
              ],
            ),
          ),
        );
      case "B2B":
        return Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          "Witaj " + controller.currentUser.value.name,
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 21, color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  controller.currentUser.value.email,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                // Text(
                //   activeUser.email,
                //   style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                // ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(1, -1),
                      )
                    ],
                  ),
                  child: TextField(
                    autofocus: true,
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Hasło", prefixIcon: Icon(Icons.vpn_key_outlined)),
                    controller: controller.passwordController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => !controller.passwordLoading.value
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 320,
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.lock_open),
                                onPressed: () => _loginUser(context),
                                label: Text(
                                  "ZALOGUJ",
                                ),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [CircularProgressIndicator()],
                        ),
                ),
              ],
            ),
          ),
        );
      default:
        return Padding(padding: EdgeInsets.all(10));
    }
  }

  void _loginUser(BuildContext context) async {
    controller.passwordLoading(true);
    bool result = await controller.passwordLogin(controller.passwordController.text);
    if (result) {
      controller.clearState();
      Get.offAllNamed("/");
    }
  }
}
