import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:optimob2b/shared/models/user/user.model.dart';
import 'package:optimob2b/shared/services/http.service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final HttpService httpService = Get.find();
  final SharedPreferences prefs = Get.find();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var currentUser = User().obs;
  var errorText = "".obs;

  var emailLoading = false.obs;
  var passwordLoading = false.obs;

  Future<bool> emailLogin(User user) async {
    final response = await httpService.post("users/email", user.toJson());
    print(response.body);
    if (response.statusCode == 200) {
      currentUser(User.fromJson(jsonDecode(response.body)));
      prefs.setString("email", response.body);
      return true;
    }

    return false;
  }

  Future<bool> passwordLogin(String password) async {
    final userJson = prefs.getString("email");
    if (userJson != null) {
      User user = User.fromJson(jsonDecode(userJson));
      user = user.copyWith(password: password);
      print(user.toJson());
      final response = await httpService.post("users/login", user.toJson());
      print(response.body);
      if (response.statusCode == 200) {
        setTitle(user);
        final token = jsonDecode(response.body)["accessToken"];
        if (token != null) {
          print(token);
          prefs.setString("token", token);
          return true;
        }
      }
    }
    return false;
  }

  void setTitle(User user) {
    switch (user.role) {
      case "ADMIN":
        prefs.setString("title", "Administrator365");
        break;
      case "WORKER":
        prefs.setString("title", "Pracownik365");
        break;
      case "B2B":
        prefs.setString("title", "Zamówienia365");
        break;
      default:
    }
  }

  void clearEmail() {
    prefs.remove("email");
  }

  void clearState() {
    currentUser(User());
    emailLoading(false);
    passwordLoading(false);
    passwordController.text = "";
    clearEmail();
  }
}
