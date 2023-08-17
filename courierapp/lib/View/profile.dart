import 'package:courierapp/View/Packagedetail.dart';
import 'package:courierapp/View/Siginuo.dart';
import 'package:courierapp/View/weight/ComanButton.dart';
import 'package:courierapp/View/weight/ComanField.dart';
import 'package:courierapp/View/weight/ComanTextField.dart';
import 'package:courierapp/View/weight/appbar.dart';
import 'package:courierapp/View/weight/navBar.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Personal Details",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),

        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Color(0xFF09EF9E),
              borderRadius: BorderRadius.all(Radius.circular(9))),
             child: Image(image: AssetImage(ImageAssets.personal)),
        )),
         StepperData(
        title: StepperText(
          "Package Details",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),

        iconWidget: Container(
          height: 58.h,
          width: 58.w,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xFE7F8F2),
              borderRadius: BorderRadius.all(Radius.circular(9))),
          child: Image(image: AssetImage(ImageAssets.stepper)),
        )),
    StepperData(
        title: StepperText(
          "Order Confirmation",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),

        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xFE7F8F2),
              borderRadius: BorderRadius.all(Radius.circular(9))),
          child: GestureDetector(
              child: Image(image: AssetImage(ImageAssets.arrow)),
            onTap: (){
            },
          ),
        )),
  ];

  Widget build(BuildContext context) {
    return  Scaffold(
      drawer:  NavBar(),
      appBar: CutomAppBar(title: 'Profile',),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: AnotherStepper(
                stepperList: stepperData,
                stepperDirection: Axis.horizontal,
                iconWidth: 40,
                iconHeight: 40,
                activeBarColor: Colors.green,
                inActiveBarColor: Colors.grey,
                inverted: true,
                verticalGap: 30,
                activeIndex: 1,
                barThickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child:Text("Sender Details",style: TextStyle(
                  fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w600,color:Color(0xFF727272)
              ),),
            ),
            SizedBox(height: 5,),
            ComanText( label: 'Name', ),
            SizedBox(height: 5,),
            ComanText( label: 'Phone Number', ),
            SizedBox(height: 5,),
            ComanTextField(assetPath: 'assets/location.png', label: 'Address',),
            SizedBox(height: 5,),
            ComanTextField(assetPath: 'assets/greenboxs.png', label: 'Pickup Date',),
            SizedBox(height: 5,),
            ComanTextField(assetPath: 'assets/greencock.png', label: 'Pickup Time',),
            SizedBox(height: 39,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text("Receiver Details",style: TextStyle(
                  fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w600,color:Colors.black
              ),),
            ),
            SizedBox(height: 5,),
            ComanText( label: 'Name', ),
            SizedBox(height: 5,),
            ComanTextField(assetPath: 'assets/location.png', label: 'Address',),
            SizedBox(height: 5,),
            ComanText( label: 'Password', ),
            SizedBox(height: 5,),
            Padding(
              padding:  EdgeInsets.symmetric( horizontal: 24.w),
              child: TextField(
                style: TextStyle(fontSize: 18.0),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 46.0, horizontal: 25.0),
                  hintText: "Enter Text",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFFC9C0C0),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
           SizedBox(height: 20.h,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0),
        child: EvaluatedButton(buttonText: 'Next', onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PackageDetail()),
          );
        },),
      ),
          ],
        ),
      ),
    );
  }
}
