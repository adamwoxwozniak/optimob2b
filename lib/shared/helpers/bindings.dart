import 'package:get/get.dart';
import 'package:optimob2b/shared/controllers/customers.controller.dart';
import 'package:optimob2b/shared/controllers/login.controller.dart';
import 'package:optimob2b/shared/controllers/products.controller.dart';
import 'package:optimob2b/shared/controllers/session.controller.dart';
import 'package:optimob2b/shared/controllers/widget.controller.dart';
import 'package:optimob2b/shared/services/http.service.dart';

class MainBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HttpService());
    Get.put(LoginController());
    Get.put(SessionController());
    Get.put(WidgetController());
    Get.put(ProductsController());
    Get.put(CustomersController());
  }
}
