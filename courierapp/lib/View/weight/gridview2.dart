import 'package:flutter/material.dart';
class HomeGridView2 extends StatefulWidget {
  final String assetPath;
  final String title;
  final String text;
  const HomeGridView2({
    super.key,
    required this.assetPath,

    required this.title, required this.text,
  });

  @override
  State<HomeGridView2> createState() => _HomeGridView2State();
}

class _HomeGridView2State extends State<HomeGridView2> {
  Color color =Color(0xFF95999B);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        setState(() {
          color=Colors.green;
        });
      },
      child: Container(
        padding: EdgeInsets.all(10),
        width: 99,
        height: 106,
        decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.assetPath,
              height: 40,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: color),
            ),
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: color),
            ),
          ],
        ),
      ),
    );
  }
}