import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optimob2b/shared/controllers/addeditdocument.controller.dart';
import 'package:optimob2b/shared/controllers/selection.controller.dart';
import 'package:optimob2b/shared/helpers/utils.dart';
import 'package:optimob2b/shared/models/products/product.model.dart';
import 'package:optimob2b/shared/widgets/document_bottom_sum.component.dart';
import 'package:optimob2b/shared/widgets/dropdownfield.dart';
import 'package:optimob2b/themes/themes.dart';

class AdminAddEditDocumentPage extends GetView<AddEditDocumentController> {
  AdminAddEditDocumentPage({Key? key}) : super(key: key);

  final id = Get.parameters["id"];
  final tabs = [
    Tab(
      text: "OGÓLNE",
    ),
    Tab(
      text: "KONTRAHENT",
    ),
    Tab(
      text: "POZYCJE",
    )
  ];

  @override
  Widget build(BuildContext context) {
    final selectionController = Get.put(SelectionController());
    controller.getPaymentForms();
    if (id != null) {
      controller.getById(int.parse(id!));
      controller.dateController.value.text = dateFormatter.format(controller.document.value.date);
      controller.creationDateController.value.text = dateFormatter.format(controller.document.value.creationDate);
      controller.paymentDateController.value.text = dateFormatter.format(controller.document.value.paymentDate);
      controller.paymentFormController.value.text = controller.document.value.paymentFormId.toString();
    } else {
      controller.getById(0);
      controller.dateController.value.text = dateFormatter.format(controller.document.value.date);
      controller.creationDateController.value.text = dateFormatter.format(controller.document.value.creationDate);
      controller.paymentDateController.value.text = dateFormatter.format(controller.document.value.paymentDate);
      controller.paymentFormController.value.text = controller.document.value.paymentFormId.toString();
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: getStatusBarTheme(context),
          title: Obx(
            () => Text(
              controller.document.value.number,
              style: GoogleFonts.poppins(fontSize: 18),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.save_outlined,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
              ),
            ),
          ],
          bottom: TabBar(
            indicatorPadding: EdgeInsets.all(0),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: tabs,
          ),
        ),
        body: Obx(
          () => controller.isLoading.value
              ? CircularProgressIndicator()
              : TabBarView(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 5, left: 5, top: 15, bottom: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 190,
                                child: TextField(
                                  controller: controller.dateController.value,
                                  style: GoogleFonts.poppins(fontSize: 10.h),
                                  decoration: InputDecoration(
                                    label: Text(
                                      "Data dokumentu",
                                      style: GoogleFonts.poppins(fontSize: 14),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.calendar_today,
                                        size: 15.h,
                                      ),
                                      onPressed: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1990),
                                          lastDate: DateTime(2050),
                                          builder: (context, child) {
                                            return Theme(
                                              data: ThemeData.light().copyWith(
                                                primaryColor: Color(primaryColor),
                                                colorScheme: ColorScheme.light(primary: Color(primaryColor)),
                                                buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
                                              ),
                                              child: child!,
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 190,
                                child: TextField(
                                  controller: controller.creationDateController.value,
                                  style: GoogleFonts.poppins(fontSize: 10.h),
                                  decoration: InputDecoration(
                                    label: Text(
                                      "Data sprzedaży",
                                      style: GoogleFonts.poppins(fontSize: 14),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.calendar_today,
                                        size: 15.h,
                                      ),
                                      onPressed: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1990),
                                          lastDate: DateTime(2050),
                                          builder: (context, child) {
                                            return Theme(
                                              data: ThemeData.light().copyWith(
                                                primaryColor: Color(primaryColor),
                                                colorScheme: ColorScheme.light(primary: Color(primaryColor)),
                                                buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
                                              ),
                                              child: child!,
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 190,
                                child: TextField(
                                  controller: controller.paymentDateController.value,
                                  style: GoogleFonts.poppins(fontSize: 10.h),
                                  decoration: InputDecoration(
                                    label: Text(
                                      "Termin płatności",
                                      style: GoogleFonts.poppins(fontSize: 14),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.calendar_today,
                                        size: 15.h,
                                      ),
                                      onPressed: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1990),
                                          lastDate: DateTime(2050),
                                          builder: (context, child) {
                                            return Theme(
                                              data: ThemeData.light().copyWith(
                                                primaryColor: Color(primaryColor),
                                                colorScheme: ColorScheme.light(primary: Color(primaryColor)),
                                                buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
                                              ),
                                              child: child!,
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 190,
                                height: 49,
                                // child: DropDownField<int>(
                                //   selectedValue: controller.document.value.paymentFormId,
                                //   items: controller.paymentForms.map((e) {
                                //     return DropdownMenuItem(
                                //       child: Text(e.name),
                                //       value: e.id,
                                //     );
                                //   }).toList(),
                                // ),
                                child: DropdownButtonFormField<int>(
                                  isDense: true,
                                  hint: Text("HINT"),
                                  value: controller.document.value.paymentFormId,
                                  icon: Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Color(primaryColor),
                                  ),
                                  elevation: 0,
                                  dropdownColor: Colors.white,
                                  style: GoogleFonts.poppins(fontSize: 10.h, color: Colors.black87),
                                  decoration: InputDecoration(
                                    label: Text(
                                      "Termin płatności",
                                      style: GoogleFonts.poppins(fontSize: 14),
                                    ),
                                  ),
                                  onChanged: (int? newValue) {},
                                  items: controller.paymentForms.map((e) {
                                    return DropdownMenuItem(
                                      child: Text(e.name),
                                      value: e.id,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    Scaffold(
                      body: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 100,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12, width: 1),
                                borderRadius: BorderRadius.circular(5),
                                color: Theme.of(context).cardTheme.color,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.document.value.buyer!.code,
                                        style: GoogleFonts.poppins(fontSize: 11, color: Color(primaryColor), fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "NIP",
                                            style: GoogleFonts.poppins(fontSize: 11, color: Colors.black38),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            controller.document.value.buyer!.vatNumber,
                                            style: GoogleFonts.poppins(fontSize: 11, color: Color(primaryColor), fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    child: Text(
                                      controller.document.value.buyer!.name,
                                      style: GoogleFonts.poppins(fontSize: 11),
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                    ),
                                  ),
                                  Text(
                                    controller.document.value.buyer!.address,
                                    style: GoogleFonts.poppins(fontSize: 11),
                                  ),
                                  Text(
                                    controller.document.value.buyer!.zipCode + " " + controller.document.value.buyer!.city,
                                    style: GoogleFonts.poppins(fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Scaffold(
                      body: ListView.separated(
                        padding: const EdgeInsets.only(bottom: 70, left: 5, right: 5, top: 5),
                        physics: BouncingScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 5,
                          );
                        },
                        itemBuilder: (context, index) {
                          Product product = controller.document.value.elements[index];
                          return InkWell(
                            splashColor: Colors.transparent,
                            child: Obx(
                              () => Container(
                                decoration: BoxDecoration(
                                  color: selectionController.isSelected(index)
                                      ? Theme.of(context).cardTheme.color
                                      : selectionController.hasSelection()
                                          ? Colors.transparent
                                          : Theme.of(context).cardTheme.color,
                                  border: Border.all(color: Colors.black12, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Container(
                                  color: Colors.transparent,
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              children: [
                                                selectionController.hasSelection()
                                                    ? selectionController.isSelected(index)
                                                        ? SizedBox(
                                                            width: 20,
                                                            child: Icon(
                                                              Icons.check_circle,
                                                              color: Color(primaryColor),
                                                              size: 16,
                                                            ),
                                                          )
                                                        : SizedBox(
                                                            width: 20,
                                                            child: Icon(
                                                              Icons.circle_outlined,
                                                              color: Color(primaryColor),
                                                              size: 16,
                                                            ),
                                                          )
                                                    : SizedBox(),
                                                Text(
                                                  product.code,
                                                  style: GoogleFonts.poppins(
                                                    color: Theme.of(context).primaryColor,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 25,
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                product.name,
                                                style: GoogleFonts.poppins(fontSize: 11),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                softWrap: false,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  product.quantity.toString() + " " + product.unit,
                                                  style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11,
                                                  ),
                                                ),
                                                Text(
                                                  numberFormatter.format(product.price) + " PLN",
                                                  style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11,
                                                  ),
                                                ),
                                                Text(
                                                  numberFormatter.format(product.price * product.quantity) + " PLN",
                                                  style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onLongPress: () {
                              selectionController.selectElement(index);
                            },
                            onTap: () {
                              if (selectionController.hasSelection()) {
                                selectionController.selectElement(index);
                              }
                            },
                          );
                        },
                        itemCount: controller.document.value.elements.length,
                      ),
                    ),
                  ],
                ),
        ),
        bottomNavigationBar: Obx(
          () => DocumentBottomSum(
            document: controller.document.value,
          ),
        ),
        floatingActionButton: Obx(
          () => SpeedDial(
            child: Icon(Icons.more_vert_outlined),
            children: [
              SpeedDialChild(
                child: Icon(Icons.add_outlined, color: Colors.white),
                backgroundColor: Color(primaryColor),
                label: "Dodaj pozycję",
                labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SpeedDialChild(
                child: Icon(Icons.group_add_outlined, color: Colors.white),
                backgroundColor: Color(primaryColor),
                label: controller.document.value.buyerId != controller.document.value.payerId ? "Zmień płatnika" : "Dodaj płatnika",
                labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                ),
                onTap: () {},
              ),
              SpeedDialChild(
                child: Icon(Icons.group_add_outlined, color: Colors.white),
                backgroundColor: Color(primaryColor),
                label: controller.document.value.buyerId != controller.document.value.receiverId ? "Zmień odbiorcę" : "Dodaj odbiorcę",
                labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                ),
                onTap: () {},
              ),
              SpeedDialChild(
                child: Icon(Icons.sync_outlined, color: Colors.white),
                backgroundColor: Color(primaryColor),
                label: "Wybierz nabywcę",
                labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
