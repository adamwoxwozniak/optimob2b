import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optimob2b/shared/controllers/session.controller.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key? key}) : super(key: key);

  final SessionController usersController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Optimo365",
                        style: GoogleFonts.poppins(fontSize: 24.h, color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Adam Woźniak",
                        style: GoogleFonts.poppins(fontSize: 12.h, color: Colors.white),
                      ),
                      Text(
                        "adam.wozniak@troncomputers.pl",
                        style: GoogleFonts.poppins(fontSize: 9.h, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                ListTile(
                  dense: true,
                  title: Center(
                    child: Text(
                      "OGÓLNE",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                // ListTile(
                //   title: Text("GŁÓWNA"),
                //   leading: Icon(Icons.home_outlined),
                //   onTap: () {
                //     Get.back();
                //     Get.toNamed("/");
                //   },
                // ),
                ListTile(
                  title: Text("TOWARY"),
                  leading: Icon(Icons.shopping_cart_outlined),
                  onTap: () {
                    Get.back();
                    Get.toNamed("/products");
                  },
                ),
                ListTile(
                  title: Text("KONTRAHENCI"),
                  leading: Icon(Icons.groups_outlined),
                  onTap: () {
                    Get.back();
                    Get.toNamed("/customers");
                  },
                ),
                Divider(
                  color: Colors.black12,
                ),
                ListTile(
                  dense: true,
                  title: Center(
                    child: Text(
                      "HANDEL",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text("FAKTURY SPRZEDAŻY"),
                  leading: Icon(Icons.description_outlined),
                  onTap: () {
                    Get.back();
                    Get.toNamed("/documents/302");
                  },
                ),
                ListTile(
                  title: Text("FAKTURY ZAKUPU"),
                  leading: Icon(Icons.description_outlined),
                  onTap: () {
                    Get.back();
                    Get.toNamed("/documents/301");
                  },
                ),
                ListTile(
                  title: Text("WYDANIA ZEWNĘTRZNE"),
                  leading: Icon(Icons.description_outlined),
                  onTap: () {
                    Get.back();
                    Get.toNamed("/documents/306");
                  },
                ),
                ListTile(
                  title: Text("REZERWACJE ODBIORCY"),
                  leading: Icon(Icons.description_outlined),
                  onTap: () {
                    Get.back();
                    Get.toNamed("/documents/308");
                  },
                ),
                ListTile(
                  title: Text("FAKTURY PRO FORMA"),
                  leading: Icon(Icons.description_outlined),
                  onTap: () {
                    Get.back();
                    Get.toNamed("/documents/320");
                  },
                ),
                Divider(
                  color: Colors.black12,
                ),
                ListTile(
                  dense: true,
                  title: Center(
                    child: Text(
                      "SYSTEM",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text("OPERATORZY"),
                  leading: Icon(Icons.manage_accounts_outlined),
                ),
                ListTile(
                  title: Text("MOJE KONTO"),
                  leading: Icon(Icons.account_circle_outlined),
                ),
                ListTile(
                  title: Text("KONFIGURACJA"),
                  leading: Icon(Icons.settings_outlined),
                  onTap: () {
                    Get.back();
                    Get.toNamed("/settings");
                  },
                ),
                ListTile(
                  title: Text("WYLOGUJ"),
                  leading: Icon(Icons.logout_outlined),
                  onTap: () {
                    usersController.logout();
                  },
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black12,
          ),
        ],
      ),
    );
  }
}
