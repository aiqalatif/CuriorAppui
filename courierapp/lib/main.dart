import 'package:courierapp/View/Brandproduct.dart';
import 'package:courierapp/View/EnterNewPassword.dart';
import 'package:courierapp/View/History.dart';
import 'package:courierapp/View/Message.dart';
import 'package:courierapp/View/Onboarding.dart';
import 'package:courierapp/View/Packagedetail.dart';
import 'package:courierapp/View/Privacypolicy.dart';
import 'package:courierapp/View/Sitting.dart';
import 'package:courierapp/View/Splash.dart';
import 'package:courierapp/View/Trackingpart3.dart';
import 'package:courierapp/View/home.dart';
import 'package:courierapp/View/login.dart';
import 'package:courierapp/View/myHistory.dart';
import 'package:courierapp/View/profile.dart';
import 'package:courierapp/View/weight/DropDwon.dart';
import 'package:courierapp/View/weight/bottambr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:courierapp/View/EnterOTP.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, child) => GetMaterialApp(
        home: Splash(),
        //
        debugShowCheckedModeBanner: false,
      ), designSize: Size(428,926),
    );
  }
}
