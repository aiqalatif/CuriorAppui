import 'package:courierapp/View/weight/appbar.dart';
import 'package:courierapp/View/weight/bottambr.dart';
import 'package:courierapp/View/weight/comanTextstyle.dart';
import 'package:courierapp/View/weight/navBar.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  NavBar(),
      appBar: CutomAppBar(title: 'Home',),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 29,),
            Container(
                padding: EdgeInsets.only(left: 25),
                child: Text("Welcome Back,",style: CustomStyle.nameOfStyle,)),
            Container(
                padding: EdgeInsets.only(left: 25),
                child: Text("Masi Ramezanzade",style: CustomTexStyle.nameOfTextStyle,)),
            // Container(
            //    margin: EdgeInsets.only(left: 233,right: 23),
            //     height: 40,
            //     width: 140,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image:   AssetImage(ImageAssets.Boxes)
            //       ,),
            //     ),
            // ),
            SizedBox(height: 39,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
               margin: EdgeInsets.only(left: 25),
                height: 220,
                width: 300,
                decoration: BoxDecoration(
                  color:  Color(0xFFF2FCF8),
                  border: Border.all(color: Colors.green,
                    // (0xFFF2FCF8),
                  ),
                  borderRadius:BorderRadius.circular(15.0),
                ),
                 child: Column(
                   children: [
                   Container(
                       padding: EdgeInsets.only(left: 25,top: 44),
                       child: Text("Track Your Shipment",style: CustomTexStyle.nameOfTextStyle,)),
                   SizedBox(height: 12.h,),
                   Container(
                     padding: EdgeInsets.only(left: 16,right: 16),
                     child: TextField(
                       
                        decoration: InputDecoration(
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                          hintText: "Type your tracking ID",
                          suffixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide: BorderSide(
                              color: Color(0xFF12BE80),
                            ),
                          ),
                        ),
                      ),
                   ),
                 ],
               ),
              ),
                SizedBox(height: 30,),
                Positioned(
                  top: 130,
                  bottom:-50,
                   right: 180,
                  child:  Container(
                  height: 110,
                  width: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:   AssetImage(ImageAssets.Bikes),
                    ),
                  ),
                ),),
                Positioned(
                  top: -60,
                  right: -20,
                  left:220,
                  child:  Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:   AssetImage(ImageAssets.Boxes),
                      ),
                    ),
                  ),),
              ],
            ),

            SizedBox(height: 50,),
            Container(
             margin: EdgeInsets.only(left: 25,),
             child:  Text("Shipment History",style: CustomTexStyle.nameOfTextStyle,),
           ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(right: 145,left: 145),
              height: 59,
              width: 59,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:   AssetImage(ImageAssets.Crossicon),
                ),
              ),
            ),
            SizedBox(height: 17,),
            Container(
              margin: EdgeInsets.only(left: 58,right: 62),
              child:  Text("You have not requested for any delivery or courier yet . " ,textAlign: TextAlign.center,style: CustomStyle.nameOfStyle,),
            ),
          ],
        ),
      ),
    );
  }
}
