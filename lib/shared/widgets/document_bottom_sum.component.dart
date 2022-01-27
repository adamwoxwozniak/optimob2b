import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optimob2b/shared/helpers/utils.dart';
import 'package:optimob2b/shared/models/documents/document.model.dart';

class DocumentBottomSum extends StatelessWidget {
  DocumentBottomSum({required this.document}) : super();
  final Document document;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NETTO",
                style: GoogleFonts.poppins(fontSize: 11.h, color: Get.isDarkMode ? Colors.white54 : Colors.black38),
              ),
              Text(
                numberFormatter.format(document.net) + " PLN",
                style: GoogleFonts.rajdhani(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.h,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "VAT",
                style: GoogleFonts.poppins(fontSize: 11.h, color: Get.isDarkMode ? Colors.white54 : Colors.black38),
              ),
              Text(
                numberFormatter.format(document.gross - document.net) + " PLN",
                style: GoogleFonts.rajdhani(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.h,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BRUTTO",
                style: GoogleFonts.poppins(fontSize: 11.h, color: Get.isDarkMode ? Colors.white54 : Colors.black38),
              ),
              Text(
                numberFormatter.format(document.gross) + " PLN",
                style: GoogleFonts.rajdhani(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.h,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
