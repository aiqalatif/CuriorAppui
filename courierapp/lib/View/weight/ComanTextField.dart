  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ComanTextField extends StatelessWidget {
  const ComanTextField({Key? key, required this.assetPath, required this.label, }) : super(key: key);
  final String assetPath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric( horizontal: 24.w),
      child: Container(
        child: Stack(
          children: [
            Container(
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
            ),
              Positioned(
               top: 20,
               right: 10,
               child: Image.asset(
               assetPath, // Replace with your image path
                width: 24.0,
               height: 24.0,
               ),
               ),
          ],
        ),
      ),
    );
  }
}

  class CustomTextStyle {
    static const TextStyle nameOfTextStyle = TextStyle(
        fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w400);
  }