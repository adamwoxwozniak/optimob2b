import 'dart:convert';

import 'package:get/get.dart';
import 'package:optimob2b/shared/models/products/product.model.dart';
import 'package:optimob2b/shared/models/products/products_response.model.dart';
import 'package:optimob2b/shared/services/http.service.dart';

class ProductsController extends GetxController {
  var isLoading = false.obs;
  var parameters = {
    "filters": "",
    "search": "",
    "orderBy": "",
    "page": "0",
    "limit": "10",
  }.obs;

  var products = ProductsResponse().obs;
  var product = Product().obs;

  final HttpService httpService = Get.find();

  void get() async {
    isLoading(true);
    final response = await httpService.get("products", parameters);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      products(ProductsResponse.fromJson(json));
    }
    isLoading(false);
  }

  void search(String searchText) async {
    isLoading(true);
    final response = await httpService.get("products", parameters);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      products(ProductsResponse.fromJson(json));
    }
    isLoading(false);
  }

  void getById(int id) async {
    isLoading(true);
    final response = await httpService.get("products/$id", parameters);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      product(Product.fromJson(json));
    }
    isLoading(false);
  }
}
