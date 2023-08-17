import 'package:flutter/material.dart';

class CustomTexStyle {
  static const TextStyle nameOfTextStyle =  TextStyle(
      fontFamily: "Poppins",fontSize: 22,fontWeight: FontWeight.w600,color:Color(0xFF525252)
  );
}
class CustomStyle {
  static const TextStyle nameOfStyle = TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.grey
  );
}
  class Custom{
  static const TextStyle Style =   TextStyle(
  fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w600,color:Colors.green
  );
}
class Custo{
  static const TextStyle nameOfe = TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.grey
  );
}
class subTitle extends StatelessWidget {
  const subTitle({Key? key, required this.image, required this.title}) : super(key: key);
   final String image;
   final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          SizedBox(width: 9,),
          Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(title,style: Custom.Style,)),
        ],
      ),
    );
  }
}
