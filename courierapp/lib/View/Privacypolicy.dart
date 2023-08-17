import 'package:courierapp/View/weight/appbar.dart';
import 'package:courierapp/View/weight/comanTextstyle.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height:18.h,
              width: 16.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:   AssetImage(ImageAssets.Vectro )),
              )
          ),
          SizedBox(width: 90.w,),
          Text('Privacy Policy',style:  TextStyle(
              fontFamily: "Poppins",fontSize: 22,fontWeight: FontWeight.w600,color:Color(0xFF727272)
          ),),
          SizedBox(width: 75.w),
          Container(
              height: 30,
              width: 15,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:   AssetImage(ImageAssets.Notification)),
              )
          ),
        ],
      ),
    ),
          SizedBox(height: 33,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum tortor eget nisi bibendum morbi at pulvinar "
                "consectetur. Ac id nec sed sed nulla faucibus. Massa eu sit laoreet nunc mauris pellentesque. "
                "Tincidunt semper facilisi tortor netus a pellentesque auctor maecenas id. Ac, egestas magna a consectetur fermentum."
                " Urna, nec quam sed massa, pellentesque. Diam enim vel porta diam iaculis"
                " tellus cursus mauris. Placerat nunc id congue in nec ac. Vitae est pharetra, ",style: CustomStyle.nameOfStyle,),
          ),
          SizedBox(height: 22,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum tortor eget nisi bibendum morbi at pulvinar "
                "consectetur. Ac id nec sed sed nulla faucibus. Massa eu sit laoreet nunc mauris pellentesque. "
                "Tincidunt semper facilisi tortor netus a pellentesque auctor maecenas id. Ac, egestas magna a consectetur fermentum."
                " Urna, nec quam sed massa, pellentesque. Diam enim vel porta diam iaculis"
                " tellus cursus mauris. Placerat nunc id congue in nec ac. Vitae est pharetra, ",style: CustomStyle.nameOfStyle,),
          ),
          SizedBox(height: 22,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum tortor eget nisi bibendum morbi at pulvinar "
                "consectetur. Ac id nec sed sed nulla faucibus. Massa eu sit laoreet nunc mauris pellentesque. "
                "Tincidunt semper facilisi tortor netus a pellentesque auctor maecenas id. Ac, egestas magna a consectetur fermentum."
                " Urna, nec quam sed massa, pellentesque. Diam enim vel porta diam iaculis"
                " tellus cursus mauris. Placerat nunc id congue in nec ac. Vitae est pharetra, ",style: CustomStyle.nameOfStyle,),
          ),
        ],
      ),
    );
  }
}
