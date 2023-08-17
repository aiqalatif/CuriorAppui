import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EvaluatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  EvaluatedButton({
    required this.buttonText,
    required this.onPressed,

  });

  final ScrollController _scrollController=ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 275.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style:  ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color: Color(0xFF00B74F))
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF00B74F)),
        ),
        child: Text(buttonText),
      ),
    );
  }
}



