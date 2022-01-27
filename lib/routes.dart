import 'package:get/get.dart';
import 'package:optimob2b/pages/admin/customers/admin_addeditcustomer.page.dart';
import 'package:optimob2b/pages/admin/customers/admin_customers.page.dart';
import 'package:optimob2b/pages/admin/documents/admin_addeditdocument.page.dart';
import 'package:optimob2b/pages/admin/documents/admin_documents.page.dart';
import 'package:optimob2b/pages/admin/home/admin_home.page.dart';
import 'package:optimob2b/pages/admin/products/admin_addeditproduct.page.dart';
import 'package:optimob2b/pages/admin/products/admin_products.page.dart';
import 'package:optimob2b/pages/admin/settings/admin_settings.page.dart';
import 'package:optimob2b/pages/login/login_email.page.dart';
import 'package:optimob2b/pages/login/login_password.page.dart';
import 'package:optimob2b/shared/controllers/addeditdocument.controller.dart';

import 'shared/helpers/guards/admin.middleware.dart';

class AppRouter {
  static final routes = [
    GetPage(name: "/email", page: () => LoginEmailPage()),
    GetPage(name: "/login", page: () => LoginPasswordPage()),
    GetPage(name: "/", page: () => AdminHomePage(), middlewares: [AdminMiddleware()]),
    GetPage(name: "/documents/:type", page: () => AdminDocumentsPage(), middlewares: [AdminMiddleware()]),
    GetPage(
      name: "/document/edit/:id",
      page: () => AdminAddEditDocumentPage(),
      middlewares: [AdminMiddleware()],
      binding: BindingsBuilder.put(
        () => Get.put(
          AddEditDocumentController(),
        ),
      ),
    ),
    GetPage(
      name: "/document/add",
      page: () => AdminAddEditDocumentPage(),
      middlewares: [AdminMiddleware()],
      binding: BindingsBuilder.put(
        () => Get.put(
          AddEditDocumentController(),
        ),
      ),
    ),
    GetPage(name: "/settings", page: () => AdminSettingsPage(), middlewares: [AdminMiddleware()]),
    GetPage(name: "/products", page: () => AdminProductsPage(), middlewares: [AdminMiddleware()]),
    GetPage(name: "/products/:id", page: () => AdminAddEditProductPage(), middlewares: [AdminMiddleware()]),
    GetPage(name: "/customers", page: () => AdminCustomersPage(), middlewares: [AdminMiddleware()]),
    GetPage(name: "/customers/:id", page: () => AdminAddEditCustomerPage(), middlewares: [AdminMiddleware()]),
  ];
}
