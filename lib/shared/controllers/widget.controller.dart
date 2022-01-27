import 'dart:convert';

import 'package:get/get.dart';
import 'package:optimob2b/shared/models/widgets/widget.response.model.dart';
import 'package:optimob2b/shared/services/http.service.dart';

class WidgetController extends GetxController {
  final HttpService httpService = Get.find();

  Future<WidgetResponse?> getIncomes() async {
    final response = await httpService.get("widgets", null);
    if (response.statusCode == 200) {
      return WidgetResponse.fromJson(jsonDecode(response.body));
    } else {
      print(response.body);
      print(response.statusCode);
    }

    return Future.value(null);
  }
}
