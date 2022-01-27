import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:optimob2b/shared/controllers/session.controller.dart';

class AdminMiddleware extends GetMiddleware {
  SessionController sessionController = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (sessionController.isAuthenticated()) {
      String? role = sessionController.getUserRole();
      if (role != null && role == "ADMIN") {
        return null;
      }
    }

    return RouteSettings(name: "/email");
  }
}
