import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optimob2b/shared/controllers/documents.controller.dart';
import 'package:optimob2b/shared/controllers/selection.controller.dart';
import 'package:optimob2b/shared/helpers/utils.dart';
import 'package:optimob2b/shared/widgets/document_item.component.dart';
import 'package:optimob2b/themes/themes.dart';
import 'package:shimmer/shimmer.dart';

class AdminDocumentsPage extends StatelessWidget {
  AdminDocumentsPage({Key? key}) : super(key: key);

  final type = Get.parameters["type"];
  final c = Get.put(DocumentsController());
  final searchController = TextEditingController();
  final DocumentsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final selectionController = Get.put(SelectionController());
    controller.get(int.parse(type!));
    return Scaffold(
      appBar: EasySearchBar(
        searchHintText: "Wyszukaj...",
        searchTextStyle: GoogleFonts.poppins(color: Color(primaryColor)),
        systemOverlayStyle: getStatusBarTheme(context),
        title: Text(
          _getTitle(int.parse(type!)),
          style: GoogleFonts.poppins(fontSize: 18),
        ),
        searchBackgroundColor: Colors.white,
        foregroundColor: Color(primaryColor),
        searchCursorColor: Colors.black45,
        searchHintStyle: GoogleFonts.poppins(color: Colors.black45),
        searchBackIconTheme: IconThemeData(color: Colors.black45),
        onSearch: (value) {
          controller.parameters({
            "filters": "",
            "search": value,
            "orderBy": "",
            "page": "0",
            "limit": "10",
          });
          if (value.isEmpty) {
            controller.get(int.parse(type!));
          } else if (value.length >= 3) {
            controller.search(int.parse(type!), value);
          }
        },
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_alt_outlined,
              color: Color(primaryColor),
            ),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return _loading(context);
        } else if (controller.documents.value.items.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "(ಥ﹏ಥ)",
                  style: GoogleFonts.roboto(fontSize: 42, color: Colors.black45),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Nie znalazłem żadnych elementów",
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.black45),
                ),
              ],
            ),
          );
        } else {
          return ListView.separated(
            padding: EdgeInsets.only(bottom: 75, left: 5, right: 5, top: 5),
            physics: BouncingScrollPhysics(),
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 5,
              );
            },
            itemBuilder: (context, index) {
              var documents = controller.documents.value.items;
              var document = documents[index];
              return InkWell(
                splashColor: Colors.transparent,
                child: Obx(() {
                  var isSelected = selectionController.isSelected(index);
                  var hasSelection = selectionController.hasSelection();
                  return DocumentItem(document, isSelected, hasSelection);
                }),
                onLongPress: () {
                  selectionController.selectElement(index);
                },
                onTap: () {
                  if (selectionController.hasSelection()) {
                    selectionController.selectElement(index);
                  } else {
                    Get.toNamed("/document/edit/${document.id}");
                  }
                },
              );
            },
            itemCount: controller.documents.value.items.length,
          );
        }
      }),
      floatingActionButton: Obx(
        () => SpeedDial(
          curve: Curves.bounceIn,
          icon: Icons.more_vert_outlined,
          children: selectionController.hasSelection()
              ? [
                  SpeedDialChild(
                    child: Icon(Icons.delete_outlined, color: Colors.white),
                    backgroundColor: Colors.red[700],
                    label: "Usuń zaznaczone",
                    labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.red[700],
                    ),
                  ),
                  SpeedDialChild(
                      child: Icon(Icons.done_all_outlined, color: Colors.white),
                      backgroundColor: Color(primaryColor),
                      label: "Zaznacz wszystkie",
                      labelStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                      ),
                      onTap: () {
                        selectionController.selectAll(controller.documents.value.items.length);
                      }),
                  SpeedDialChild(
                      child: Icon(Icons.remove_done_outlined, color: Colors.white),
                      backgroundColor: Color(primaryColor),
                      label: "Odznacz",
                      labelStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                      ),
                      onTap: () {
                        selectionController.clearSelection();
                      }),
                ]
              : [
                  SpeedDialChild(
                      child: Icon(Icons.done_all_outlined, color: Colors.white),
                      backgroundColor: Color(primaryColor),
                      label: "Zaznacz wszystkie",
                      labelStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                      ),
                      onTap: () {
                        selectionController.selectAll(controller.documents.value.items.length);
                      }),
                  SpeedDialChild(
                      child: Icon(Icons.add_outlined, color: Colors.white),
                      backgroundColor: Color(primaryColor),
                      label: "Dodaj nowy",
                      labelStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                      ),
                      onTap: () {
                        Get.toNamed("/document/add");
                      }),
                ],
        ),
      ),
    );
  }

  String _getTitle(int type) {
    switch (type) {
      case 301:
        return "FAKTURY ZAKUPU";
      case 302:
        return "FAKTURY SPRZEDAŻY";
      case 306:
        return "WYDANIA ZEWNĘTRZNE";
      case 308:
        return "REZERWACJE ODBIORCY";
      case 320:
        return "FAKTURY PRO FORMA";
      default:
        return "";
    }
  }

  Widget _loading(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(bottom: 56, left: 10, right: 10, top: 10),
      itemBuilder: (_, __) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(0),
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).primaryColor.withOpacity(0.06),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(1, -1),
            ),
          ],
          color: Theme.of(context).cardTheme.color,
        ),
        child: Card(
          elevation: 0,
          child: InkWell(
            onTap: () {},
            child: Container(
              // color: Theme.of(context).primaryColor,
              padding: EdgeInsets.all(5),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Shimmer.fromColors(
                              baseColor: primarySwatch[100]!,
                              highlightColor: Colors.white70,
                              child: SizedBox(
                                height: 20,
                                width: 110,
                                child: Card(),
                              ),
                            ),
                            Shimmer.fromColors(
                              baseColor: primarySwatch[100]!,
                              highlightColor: Colors.white70,
                              child: SizedBox(
                                height: 20,
                                width: 50,
                                child: Card(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Shimmer.fromColors(
                          baseColor: primarySwatch[100]!,
                          highlightColor: Colors.white70,
                          child: SizedBox(
                            height: 20,
                            width: double.infinity,
                            child: Card(),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Shimmer.fromColors(
                              baseColor: primarySwatch[100]!,
                              highlightColor: Colors.white70,
                              child: SizedBox(
                                height: 20,
                                width: 70,
                                child: Card(),
                              ),
                            ),
                            Shimmer.fromColors(
                              baseColor: primarySwatch[100]!,
                              highlightColor: Colors.white70,
                              child: SizedBox(
                                height: 20,
                                width: 70,
                                child: Card(),
                              ),
                            ),
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
      ),
      separatorBuilder: (_, __) => SizedBox(
        height: 7,
      ),
      itemCount: 15,
    );
  }
}

// body: GetX<DocumentsController>(builder: (controller) => {
//   return Obx(() => FutureBuilder<DocumentsResponse>(
//     future: controller.get(int.parse(type!)),
//     builder: (context, snapshot) {
//       if (snapshot.connectionState == ConnectionState.waiting) {
//         return _loading(context);
//       } else if (!snapshot.hasData) {
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "(ಥ﹏ಥ)",
//                 style: GoogleFonts.roboto(fontSize: 42, color: Colors.black45),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Text(
//                 "Nie znalazłem żadnych elementów",
//                 style: GoogleFonts.poppins(fontSize: 16, color: Colors.black45),
//               ),
//             ],
//           ),
//         );
//       } else {
//         return ListView.separated(
//           padding: EdgeInsets.only(bottom: 75, left: 10, right: 10, top: 10),
//           physics: BouncingScrollPhysics(),
//           separatorBuilder: (context, index) {
//             return SizedBox(
//               height: 7,
//             );
//           },
//           itemBuilder: (context, index) {
//             var documents = snapshot.data!.items;
//             var document = documents[index];
//             return InkWell(
//               child: Obx(
//                 () => selectionController.isSelected(index)
//                     ? Container(
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: primarySwatch[200]!,
//                             width: 1,
//                             style: BorderStyle.solid,
//                           ),
//                         ),
//                         child: DocumentItem(
//                           document,
//                         ),
//                       )
//                     : DocumentItem(
//                         document,
//                       ),
//               ),
//               onLongPress: () {
//                 selectionController.selectElement(index);
//               },
//               onTap: () {
//                 if (selectionController.hasSelection()) {
//                   selectionController.selectElement(index);
//                 } else {
//                   Get.toNamed("/document/${document.id}");
//                 }
//               },
//             );
//           },
//           itemCount: snapshot.data!.items.length,
//         );
//       }
//     }),);
// },),
