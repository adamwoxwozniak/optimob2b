import 'dart:convert';

import 'package:get/get.dart';
import 'package:optimob2b/shared/models/documents/documents_response.model.dart';
import 'package:optimob2b/shared/services/http.service.dart';

class DocumentsController extends GetxController {
  var isLoading = false.obs;
  var onError = "".obs;
  var parameters = {
    "filters": "",
    "search": "",
    "orderBy": "",
    "page": "0",
    "limit": "10",
  }.obs;

  var documents = DocumentsResponse().obs;

  final HttpService httpService = Get.find();

  void get(int type) async {
    isLoading(true);
    final response = await httpService.get("documents/type/$type", parameters);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      documents(DocumentsResponse.fromJson(json));
    }
    isLoading(false);
  }

  void search(int type, String searchText) async {
    isLoading(true);
    final response = await httpService.get("documents/type/$type", parameters);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      documents(DocumentsResponse.fromJson(json));
    }
    isLoading(false);
  }
}
