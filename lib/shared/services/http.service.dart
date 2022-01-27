import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class HttpService {
  final apiUrl = "10.0.2.2";
  // final apiUrl = "b2b.troncomputers.pl";
  // final prefs = Get.find<SharedPreferences>();

  Future<http.Response> get(String endpoint, Map<String, dynamic>? params) async {
    // final url = Uri.https(apiUrl, "/api/" + endpoint);
    final prefs = await SharedPreferences.getInstance();
    final url = Uri(scheme: "https", host: apiUrl, path: "/api/" + endpoint, queryParameters: params, port: 7209);
    return await http.get(url, headers: {
      "Content-type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer ${prefs.getString("token")}"
    }).timeout(
        Duration(
          seconds: 15,
        ),
        onTimeout: () => http.Response("ERROR", 700));
  }

  Future<http.Response> post(String endpoint, Map<String, dynamic> obj) async {
    // final url = Uri.https(apiUrl, "/api/" + endpoint);
    final prefs = await SharedPreferences.getInstance();
    final url = Uri(scheme: "https", host: apiUrl, path: "/api/" + endpoint, port: 7209);
    return await http.post(url,
        body: jsonEncode(obj),
        headers: {"Content-type": "application/json", "Accept": "application/json", "Authorization": "Bearer ${prefs.getString("token")}"});
  }
}
