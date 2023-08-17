import 'package:flutter/material.dart';
import 'package:courierapp/View/weight/comanTextstyle.dart';
class Coamline extends StatelessWidget {
  const Coamline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 23,top: 5),
          child: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
                color: Colors.yellow
            ),
          ),
        ),
        SizedBox(width: 6,),
        Container(
            child: Text("Lorem ipsum dolor sit amet consectetur. ",style: CustomStyle.nameOfStyle,)),
      ],
    );
  }
}
