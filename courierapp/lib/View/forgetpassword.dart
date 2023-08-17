import 'package:courierapp/View/EnterOTP.dart';
import 'package:courierapp/View/weight/ComanButton.dart';
import 'package:courierapp/View/weight/ComanTextField.dart';
import 'package:courierapp/View/weight/comanTextstyle.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                image: DecorationImage(
                    image: AssetImage(ImageAssets.curve)),
            ),
            child: Column(
              children: [
                Stack(
                  children:[ Container(
                    margin: EdgeInsets.only(
                        left: 206.0, right: 78, top: 69
                    ),
                    height: 88.h,
                    width: 95.h,
                      child: Image.asset(ImageAssets.question),
                  ),
                    Positioned(child: Container(
                        margin: const EdgeInsets.only(
                          left: 85.0, right: 82,top: 110 ),
                        height: 217,
                        width: 366,
                        child: Image.asset(ImageAssets.forget)),)
                  ]
                ),
               
              ],
            ),
          ),
          SizedBox(height: 27,),
          Container(
            margin: EdgeInsets.only(left: 26.w),
            child: Text("Forgot Password",style: CustomTexStyle.nameOfTextStyle,),),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 26.w),
            child: Text("Select which contact details should we use to reset your password.",style:  CustomStyle.nameOfStyle),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            height: 71.h,
             width: 378.w,
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.yellow,),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 14,right: 10,top: 5),
                  height: 49.h,
                  width: 49.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFFD100),
                  ),
                  child:Center(child: Image.asset(ImageAssets.messicon)),
                ),
                Column(
                  children: [
                    SizedBox(height: 15,),
                    Text("Send OTP via SMS",style: TextStyle(
                        fontFamily: "Poppins",fontSize: 12,fontWeight: FontWeight.w500,color:Color(0xFFADA4A5)
                    ),),
                    SizedBox(height: 3,),
                    Text("563-73782-8342",style: TextStyle(
                        fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w500,color:Colors.grey
                    ),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            height: 71.h,
            width: 378.w,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xFFDADADA),),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 14,right: 10,top: 5),
                  height: 49.h,
                  width: 49.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFDADADA),
                  ),
                  child:Center(child: Image.asset(ImageAssets.messageicon)),
                ),
                Column(
                  children: [
                    SizedBox(height: 15,),
                    Text("Send OTP via SMS",style: TextStyle(
                        fontFamily: "Poppins",fontSize: 12,fontWeight: FontWeight.w500,color:Color(0xFFADA4A5)
                    ),),
                    SizedBox(height: 3,),
                    Text("563-73782-8342",style: TextStyle(
                        fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w500,color:Colors.grey
                    ),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height:51),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:77.w),
            child: EvaluatedButton(buttonText: 'Send', onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OTPscreen()),
              );
            },),
          ),
        ],
      ),
    );
  }
}
