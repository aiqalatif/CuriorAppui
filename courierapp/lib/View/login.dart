import 'package:courierapp/View/forgetpassword.dart';
import 'package:courierapp/View/weight/ComanButton.dart';
import 'package:courierapp/View/weight/ComanTextField.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;
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
                      image: DecorationImage(
                          image: AssetImage(ImageAssets.cilpath))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 85.0, right: 82, top: 100),
                    child: SizedBox(
                        height: 377,
                        width: 366,
                        child: Image.asset(ImageAssets.menbox)),
                  ),
                ),
                SizedBox(height: 37,),
                Container(
                  margin: EdgeInsets.only(left: 26.w),
                    child: Text("Welcome Back !",style: TextStyle(
                        fontFamily: "Poppins",fontSize: 22,fontWeight: FontWeight.w600,color:Colors.grey
                    ),),),
                SizedBox(height: 15,),
                ComanTextField(assetPath: 'assets/Lock.png', label: 'Password', ),
                SizedBox(height: 20,),
                ComanTextField(assetPath: 'assets/Message.png', label: ' Enter Email ', ),
                SizedBox(height:14.h),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:20.w),
                  child: Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          //
                        },
                      ),
                      Text("Remember me"),
                      SizedBox(width: 80,),
                      GestureDetector(child: Text("Forgot Password?",style: TextStyle(fontFamily: "Poppins",fontSize: 12,fontWeight: FontWeight.w400,color:Color(0xFFF15B2A)),)),

                    ],
                  ),
                ),
                SizedBox(height:15),
                Padding(
                  padding:  EdgeInsets.only(left:80.w),
                  child: EvaluatedButton(buttonText: 'login', onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPassword()),
                    );
                  },),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding:  EdgeInsets.only(left:90.w),
                  child: Row(
                    children: [
                      Text("Already have an account? ",style:  TextStyle(
                          fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w400,color:Colors.black
                      ),),
                      Text(" Sign Up",style:  TextStyle(
                          fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w400,color:Colors.green
                      ),),
                    ],
                  ),
                ),
              ],
          ),
        ),
    );
  }
}