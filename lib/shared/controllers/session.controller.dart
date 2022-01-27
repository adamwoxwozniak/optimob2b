import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionController extends GetxController {
  SharedPreferences prefs = Get.find();

  String? getUserRole() {
    final token = prefs.getString("token");
    if (token != null) {
      final data = JwtDecoder.decode(token);
      return data["role"];
    }

    return null;
  }

  bool isAuthenticated() {
    final token = prefs.getString("token");
    if (token != null) {
      return !JwtDecoder.isExpired(token);
    }
    return false;
  }

  void logout() {
    prefs.remove("token");
    Get.offAllNamed("/email");
  }
}
