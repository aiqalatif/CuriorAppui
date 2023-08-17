import "package:courierapp/View/EnterNewPassword.dart";
import "package:courierapp/View/weight/ComanButton.dart";
import "package:courierapp/View/weight/ComanTextField.dart";
import "package:courierapp/View/weight/comanTextstyle.dart";
import "package:courierapp/assets/assets.dart";
import"package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
class OTPscreen extends StatefulWidget {
  const OTPscreen({Key? key}) : super(key: key);

  @override
  State<OTPscreen> createState() => _OTPscreenState();
}

class _OTPscreenState extends State<OTPscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    child: Image.asset(ImageAssets.otp)),
              ),
            ),
            SizedBox(height: 91,),
            Container(
              margin: EdgeInsets.only(left: 26.w),
              child: Text("Enter OTP Code",style:CustomTexStyle.nameOfTextStyle,),),
            Container(
              margin: EdgeInsets.only(left: 26.w),
              child: Text("OTP code has been sent to 563-73782-8342",style: CustomStyle.nameOfStyle,),),
           SizedBox(
             height: 24.h,
           ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 76.h,
                      width: 78.w,
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                          // Set border for enabled state (default)
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1.8, color: Color(0xFFFFD100)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly,

                        ],
                      ),
                    ),

                    SizedBox(
                      height: 76.h,
                      width: 78.w,
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                          // Set border for enabled state (default)
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1.8, color: Color(0xFFFFD100)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,

                        ],
                      ),
                    ),

                    SizedBox(
                      height: 76.h,
                      width: 78.w,
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(

                          // Set border for enabled state (default)
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1.8, color: Color(0xFFFFD100)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 76.h,
                      width: 78.w,
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                          // Set border for enabled state (default)
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1.8, color: Color(0xFFFFD100)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 23.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: Row(
                children: [
                  Text("Resend Code ",
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily: "Poppins"),),
                    Text("00:52s ",
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily: "Poppins",color: Colors.green),),
                ],
              ),
            ),
            SizedBox(height:51),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:77.w),
              child: EvaluatedButton(buttonText: 'Verify', onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  EnterNewPassword()),
                );
              },),
            ),
        ],
        ),
      ),
    );
  }
}
