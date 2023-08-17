import 'package:courierapp/View/weight/ComanButton.dart';
import 'package:courierapp/View/weight/ComanTextField.dart';
import 'package:courierapp/View/weight/bottambr.dart';
import 'package:courierapp/View/weight/comanTextstyle.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class EnterNewPassword extends StatefulWidget {
  const EnterNewPassword({Key? key}) : super(key: key);

  @override
  State<EnterNewPassword> createState() => _EnterNewPasswordState();
}

class _EnterNewPasswordState extends State<EnterNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 410.h,
              width: 430.w,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(ImageAssets.cilpath))
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                 Container(
                   margin: EdgeInsets.only(left: 115.w,top: 92.h),
                    height: 140,
                    width: 174,
                    child: Image.asset(ImageAssets.lockhi)),
              Positioned(
                top: 200,
                  child:Container(
                    margin: EdgeInsets.only(left: 25,top: 23),
                    height: 60,
                      width: 180,
                      child: Image.asset(ImageAssets.starleft))),
              SizedBox(width: 3,),
              Positioned(
                top: 200,
              left: 180,
                  child:Container(
                      height: 60,
                      width: 160,
                      child: Image.asset(ImageAssets.starleft))),
              ],
            ),
            ),
            SizedBox(height: 23,),
            Container(
            margin: EdgeInsets.only(left: 26.w),
            child: Text("Enter New Password",style:CustomTexStyle.nameOfTextStyle,),),
           Container(
          margin: EdgeInsets.only(left: 26.w),
          child: Text("Please enter ne password",style: CustomStyle.nameOfStyle,),),
            SizedBox(height: 23,),
          ComanTextField(assetPath: 'assets/Lock.png', label: 'New Password', ),
            SizedBox(height: 17,),
            ComanTextField(assetPath: 'assets/Lock.png', label: 'Confirm Password', ),


            SizedBox(height:51),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:77.w),
              child: EvaluatedButton(buttonText: 'Save', onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  bottomappbr()),
                );
              },),
            ),





          ],
        ),
      ),


    );
  }
}
