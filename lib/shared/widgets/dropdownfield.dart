import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optimob2b/themes/themes.dart';

class DropDownField<T> extends StatelessWidget {
  DropDownField({required this.selectedValue, required this.items}) : super();

  final T selectedValue;
  final List<DropdownMenuItem<T>> items;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      isDense: true,
      value: selectedValue,
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
      onChanged: (T? newValue) {},
      items: items,
    );
  }
}
