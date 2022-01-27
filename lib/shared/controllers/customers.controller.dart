import 'dart:convert';

import 'package:get/get.dart';
import 'package:optimob2b/shared/models/customers/customer.model.dart';
import 'package:optimob2b/shared/models/customers/customers_response.model.dart';
import 'package:optimob2b/shared/services/http.service.dart';

class CustomersController extends GetxController {
  var isLoading = false.obs;
  var onError = "".obs;
  var parameters = {
    "filters": "",
    "search": "",
    "orderBy": "",
    "page": "0",
    "limit": "10",
  }.obs;

  var customers = CustomersResponse().obs;
  var customer = Customer().obs;

  final HttpService httpService = Get.find();

  void get() async {
    isLoading(true);
    final response = await httpService.get("customers", parameters);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      customers(CustomersResponse.fromJson(json));
    }
    isLoading(false);
  }

  void search(String searchText) async {
    isLoading(true);
    final response = await httpService.get("customers", parameters);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      customers(CustomersResponse.fromJson(json));
    }
    isLoading(false);
  }

  void getbyId(int id) async {
    isLoading(true);
    final response = await httpService.get("customers/$id", parameters);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      customer(Customer.fromJson(json));
    } else {
      print(response.statusCode);
      print(response.body);
    }
    isLoading(false);
  }
}
