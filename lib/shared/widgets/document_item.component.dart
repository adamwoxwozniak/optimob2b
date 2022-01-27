import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:optimob2b/shared/helpers/utils.dart';
import 'package:optimob2b/shared/models/documents/document.model.dart';
import 'package:optimob2b/themes/themes.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class DocumentItem extends StatelessWidget {
  DocumentItem(this.document, this.isSelected, this.selectionMode) : super();

  final Document document;
  final d = DateFormat("dd.MM.yyyy");

  final bool isSelected;
  final bool selectionMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: RotatedCornerDecoration(
        color: document.bufor == 1
            ? Color(buforColor)
            : document.bufor == -1
                ? Color(cancelColor)
                : Colors.transparent,
        geometry: BadgeGeometry(width: 16, height: 16, cornerRadius: 5, alignment: BadgeAlignment.topLeft),
      ),
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
        // elevation: 0,
        color: Colors.transparent,
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
                                Text(
                                  document.number,
                                  style: GoogleFonts.poppins(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w600, fontSize: 11.h),
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
                                    Text(
                                      document.number,
                                      style: GoogleFonts.poppins(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w600, fontSize: 11.h),
                                    ),
                                  ],
                                )
                              : Text(
                                  document.number,
                                  style: GoogleFonts.poppins(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w600, fontSize: 11.h),
                                ),
                      Text(
                        d.format(document.date),
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
                      document.customerName,
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
                        numberFormatter.format(document.net) + " PLN",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11.h),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Text(
                        numberFormatter.format(document.gross) + " PLN",
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
