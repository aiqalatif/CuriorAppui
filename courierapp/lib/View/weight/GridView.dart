import'package:flutter/material.dart';
class HomeGridBox extends StatefulWidget {
  final String assetPath;
  final String title;
  const HomeGridBox({
    super.key,
    required this.assetPath,

    required this.title,
  });

  @override
  State<HomeGridBox> createState() => _HomeGridBoxState();
}

class _HomeGridBoxState extends State<HomeGridBox> {
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
        height: 92,
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
