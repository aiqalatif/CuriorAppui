import 'package:courierapp/View/weight/comanTextstyle.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CommonDropDown extends StatelessWidget {
  final List<DropdownMenuItem<String>> items;
  final ValueChanged<String?> onChanged;
  final String? value;
  final String image;
   final   color;
  const CommonDropDown(
      {super.key, required this.items, required this.onChanged, this.value, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
height: 60,

          margin: EdgeInsets.symmetric(horizontal: 20.w),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: const Color(0xFFEE7F8F2),
              width: 1,
            ),

          ),
          child: DropdownButton(
            value: value,
            isExpanded: true,
            underline: const SizedBox(),
            items: items,
            onChanged: onChanged,
          )),
        Positioned(
          top: 10.h,
          left: 299.w,
          child: Row(
            children: [
              Container(
                  height:34,
                  width: 44,
                  child: Image.asset(image)),
              Image.asset(ImageAssets.dropdwon),

            ],
          ),),
        Positioned(
          top: 10.h,
          left: 21.w,
          child:  Container(
              margin: EdgeInsets.only(left: 15,top: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Order ID : 542535261",style: Custom.Style,),
                  SizedBox(height: 5,),
                 Text("03 May 2023",style: CustomStyle.nameOfStyle,),

                ],
              )),),


      ]
    );
  }
}
