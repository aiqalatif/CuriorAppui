import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ComanText extends StatelessWidget {
  const ComanText({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric( horizontal: 24.w),
      child: TextField(
        style:  TextStyle(
            fontFamily: "Poppins",fontSize: 16,fontWeight: FontWeight.w400,color:Colors.grey
        ),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 11.0, right: 16),
          ),
          hintText: label,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xFFC9C0C0),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
