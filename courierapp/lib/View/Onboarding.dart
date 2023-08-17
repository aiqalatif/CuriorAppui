import 'package:courierapp/View/ONBOarding2.dart';
import 'package:courierapp/View/weight/ComanTextField.dart';
import 'package:courierapp/View/weight/comanTextstyle.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:custom_clippers/custom_clippers.dart';
class onboarding extends StatelessWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 410.h,
            width: 430.w,
            decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(ImageAssets.cilpath))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 85.0,right: 82,top: 162),
              child: Container(
                height: 377,
                  width: 266,
                  child: Image.asset(ImageAssets.Mask)),
            ),
          ),
          SizedBox(height: 56.h,),
          Container(
            margin:EdgeInsets.only(left: 25,),
            child: Text("Best Package Delivery",
              style: TextStyle(fontFamily: "Poppins",fontSize: 24,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: 6.h,),
          Container(
            margin: EdgeInsets.only(left: 25,right: 70),
            child: Text("Lorem ipsum dolor sit amet consectetur. Urna ac malesuada eu nullam amet nunc. Vitae egestas quisque cursus justo consectetur donec vitae diam.",
              style:CustomStyle.nameOfStyle),
          ),

         Padding(
           padding: EdgeInsets.only(left: 260,right: 10,top: 142),
           child: GestureDetector(
             onTap: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => OnBoarding()),
               );
             },
             child: Container(
               height: 70,
               width: 70,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 image:  DecorationImage(
                   image:   AssetImage(ImageAssets.Button),
                 ),
               ),
             ),
           ),
         )
        ],
      ),
    );
  }
}
