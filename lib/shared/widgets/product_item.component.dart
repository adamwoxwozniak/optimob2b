import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optimob2b/shared/helpers/utils.dart';
import 'package:optimob2b/shared/models/products/product.model.dart';
import 'package:intl/intl.dart';
import 'package:optimob2b/themes/themes.dart';

class ProductItem extends StatelessWidget {
  ProductItem(this.product, this.isSelected, this.selectionMode) : super();

  final Product product;
  final d = DateFormat("dd.MM.yyyy");

  final bool isSelected;
  final bool selectionMode;
  @override
  Widget build(BuildContext context) {
    return Container(
      // foregroundDecoration: RotatedCornerDecoration(
      //   color: document.bufor == 1
      //       ? Color(buforColor)
      //       : document.bufor == -1
      //           ? Color(cancelColor)
      //           : Colors.transparent,
      //   geometry: BadgeGeometry(width: 16, height: 16, cornerRadius: 5, alignment: BadgeAlignment.topLeft),
      // ),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: isSelected
            ? Theme.of(context).cardTheme.color
            : selectionMode
                ? Colors.transparent
                : Theme.of(context).cardTheme.color,
        border: Border.all(color: Colors.black12, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        margin: EdgeInsets.all(10),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            product.image == null
                ? Icon(
                    Icons.image_outlined,
                    size: 46,
                  )
                : Image.memory(
                    base64Decode(product.image!),
                    height: 60,
                    width: 60,
                  ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isSelected
                          ? Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: Color(primaryColor),
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 165,
                                  child: Text(
                                    product.code,
                                    style: GoogleFonts.poppins(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w600, fontSize: 11.h),
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                  ),
                                ),
                              ],
                            )
                          : selectionMode
                              ? Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle_outline,
                                      color: Color(primaryColor),
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(
                                      width: 165,
                                      child: Text(
                                        product.code,
                                        style:
                                            GoogleFonts.poppins(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w600, fontSize: 11.h),
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(
                                  width: 180,
                                  child: Text(
                                    product.code,
                                    style: GoogleFonts.poppins(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w600, fontSize: 11.h),
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                  ),
                                ),
                      Text(
                        product.ean,
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11.h),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      product.name,
                      style: GoogleFonts.poppins(fontSize: 11.h),
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        numberFormatter.format(product.quantity),
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11.h),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Text(
                        numberFormatter.format(product.price) + " PLN",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11.h),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
