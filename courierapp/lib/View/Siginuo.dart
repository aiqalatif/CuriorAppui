import 'package:courierapp/View/login.dart';
import 'package:courierapp/View/weight/ComanButton.dart';
import 'package:courierapp/View/weight/ComanTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 class Siginuo extends StatefulWidget {
   const Siginuo({Key? key}) : super(key: key);

   @override
   State<Siginuo> createState() => _SiginuoState();
 }

 class _SiginuoState extends State<Siginuo> {
   @override
   Widget build(BuildContext context) {
     bool _isChecked = false;
     return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 90,),
            Container(
              height: 80.h,
              width: 154.w,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/SplashIcon.png'))
              ),
            ),
            SizedBox(height: 23.h,),
            Text("Create an Account!",
              style: TextStyle(color: Color(0xFF727272),fontFamily: 'Poppins',fontSize: 26,fontWeight: FontWeight.w600,),),
            SizedBox(height: 15,),
            ComanTextField(assetPath: 'assets/Profile.png', label: 'Full Name', ),
            SizedBox(height: 20,),
            ComanTextField(assetPath: 'assets/Message.png', label: ' Enter Email ', ),
            SizedBox(height: 20,),
            ComanTextField(assetPath: 'assets/call.png', label: 'Phone Number', ),
            SizedBox(height: 20,),
            ComanTextField(assetPath: 'assets/Lock.png', label: 'Password', ),
            SizedBox(height: 20,),
            ComanTextField(assetPath: 'assets/Lock.png', label: 'Create Account', ),
            SizedBox(height:14.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:24.w),
              child: Row(
                children: [
                  Checkbox(
                      value: _isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue ?? false;
                        });
                      },
                    ),
                Text("Agree with Terms & Conditions"),
                ],
              ),
            ),
            SizedBox(height:15),
            EvaluatedButton(buttonText: 'Sign Up', onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => login()),
              );
            },),
            SizedBox(height:10),
            Padding(
              padding:  EdgeInsets.only(left:100.w),
              child: Row(
                children: [
                  Text("Already have an account? ",style:  TextStyle(
                      fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w400,color:Colors.black
                  ),),
                  Text(" Log In",style:  TextStyle(
                      fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w400,color:Colors.green
                  ),),
                ],
              ),
            ),
          ],
        ),
     );
   }
 }
