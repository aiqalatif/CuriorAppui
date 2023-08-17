import 'package:courierapp/View/Siginuo.dart';
import 'package:courierapp/View/weight/ComanButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Splashicon extends StatefulWidget {
  const Splashicon({Key? key}) : super(key: key);

  @override
  State<Splashicon> createState() => _SplashiconState();
}

class _SplashiconState extends State<Splashicon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 270,),
          Container(
            height: 80.h,
            width: 154.w,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/SplashIcon.png'))
            ),
          ),
          SizedBox(height: 33,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 34),
              child: Text("Welcome To DeliveryCo. ",
                style: TextStyle(fontFamily: 'Poppins',fontSize: 26,fontWeight: FontWeight.w600,color: Color(0xFF00B74F)),)),
          SizedBox(height: 8,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text("It is a delivery application that allows you to better manage your couriers and deliveries.",textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Poppins',fontSize: 16,fontWeight: FontWeight.w400,),)),
            SizedBox(height: 33,),
          Container(
            height: 52,
            width: 295,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Color(0xFF00B74F))
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Siginuo()),);
              },
              child: Text("LOG IN",style: TextStyle(color: Color(0xFF00B74F),fontSize: 16,fontWeight: FontWeight.w700),),
            ),
          ),
          SizedBox(height: 20.h,),
          Container(
            height: 52,
            width: 295,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.green)
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF00B74F)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siginuo()),);
              },
              child: Text("SIGN UP",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
            ),
          ),
        ],
      ),
    );
  }
}
