import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:optimob2b/shared/helpers/utils.dart';
import 'package:optimob2b/shared/models/documents/document.model.dart';
import 'package:optimob2b/shared/models/documents/paymentform.model.dart';
import 'package:optimob2b/shared/services/http.service.dart';

class AddEditDocumentController extends GetxController {
  final dateController = TextEditingController().obs;
  final creationDateController = TextEditingController().obs;
  final paymentDateController = TextEditingController().obs;
  final paymentFormController = TextEditingController().obs;

  var document = Document(date: DateTime.now(), creationDate: DateTime.now(), paymentDate: DateTime.now()).obs;
  var paymentForms = <PaymentForm>[].obs;
  final HttpService httpService = Get.find();
  var isLoading = false.obs;

  void getById(int id) async {
    isLoading(true);
    final response = await httpService.get("documents/$id", null);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      document(Document.fromJson(json));
      dateController(TextEditingController(text: dateFormatter.format(document.value.date)));
      creationDateController(TextEditingController(text: dateFormatter.format(document.value.creationDate)));
      paymentDateController(TextEditingController(text: dateFormatter.format(document.value.paymentDate)));
      paymentFormController(TextEditingController(text: document.value.paymentFormId.toString()));
    }
    isLoading(false);
  }

  void getPaymentForms() async {
    final response = await httpService.get("documents/paymentforms", null);
    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      paymentForms(List<PaymentForm>.from(jsonList.map((e) => PaymentForm.fromJson(e))));
    }
  }
}
