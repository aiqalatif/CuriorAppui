import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:courierapp/View/weight/ComanButton.dart';
import 'package:courierapp/View/weight/appbar.dart';
import 'package:courierapp/View/weight/comanTextstyle.dart';
import 'package:courierapp/View/weight/navBar.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class RequestPackage extends StatefulWidget {
   RequestPackage({Key? key}) : super(key: key);

  @override
  State<RequestPackage> createState() => _RequestPackageState();
}

class _RequestPackageState extends State<RequestPackage> {

  Color color =Color(0xFF95999B);
 bool _isChecked=false;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar:CutomAppBar(title: 'Request Package',),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/greenboxs.png'),
                  SizedBox(width: 3,),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                      child: Text('Schedule Pickup',style: Custom.Style,)),
                  SizedBox(width: 50,),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text('12:20:00  08-02-2023',style: CustomStyle.nameOfStyle,))
                ],
              ),
            ),
            SizedBox(height: 29,),
            subTitle(image: 'assets/location.png', title: 'Pickup Address',),
            SizedBox(height: 9,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 3,),
                  Container(
                      child: Text('Sender Name :',style: Custo.nameOfe,)),
                  SizedBox(width: 33,),
                  Container(
                      child: Text('Haya Khan',style: CustomStyle.nameOfStyle,)),
                ],
              ),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 3,),
                  Container(
                      child: Text('Contact Number:',style: Custo.nameOfe,)),
                  SizedBox(width: 20,),
                  Container(
                      child: Text('0362 76251873',style: CustomStyle.nameOfStyle,)),
                ],
              ),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 3,),
                  Container(
                      child: Text('Address  :',style: Custo.nameOfe,)),
                  SizedBox(width: 38,),
                  Container(
                    width: 214,
                    height: 41,
                      child: Text('546, Sector G, Bahria Town, Islamabad ',
                        textAlign:TextAlign.center,style: CustomStyle.nameOfStyle,)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            subTitle(image: 'assets/location.png', title: 'Delivery Address',),
            SizedBox(height: 9,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 3,),
                  Container(
                      child: Text('Sender Name :',style: Custo.nameOfe,)),
                  SizedBox(width: 33,),
                  Container(
                      child: Text('Haya Khan',style: CustomStyle.nameOfStyle,)),
                ],
              ),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 3,),
                  Container(
                      child: Text('Contact Number:',style: Custo.nameOfe,)),
                  SizedBox(width: 20,),
                  Container(
                      child: Text('0362 76251873',style: CustomStyle.nameOfStyle,)),
                ],
              ),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 3,),
                  Container(
                      child: Text('Address  :',style: Custo.nameOfe,)),
                  SizedBox(width: 38,),
                  Container(
                      width: 214,
                      height: 41,
                      child: Text('546, Sector G, Bahria Town, Islamabad ',
                        textAlign:TextAlign.center,style: CustomStyle.nameOfStyle,)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            subTitle(image: 'assets/blankboxes.png', title: 'Package Details',),
            SizedBox(height: 9,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 3,),
                  Container(
                      child: Text('Package Type :',style: Custo.nameOfe,)),
                  SizedBox(width: 33,),
                  Container(
                      child: Text(' Easily Breakable',style: CustomStyle.nameOfStyle,)),
                ],
              ),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 3,),
                  Container(
                      child: Text('Package Size :',style: Custo.nameOfe,)),
                  SizedBox(width: 35,),
                  Container(
                      child: Text('1kg - 5kg',style: CustomStyle.nameOfStyle,)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/blankboxes.png'),
                  SizedBox(width: 3,),
                  Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Text('Shipping Method',style: Custom.Style,)),
                  SizedBox(width: 60,),
                  Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Text('Same Day 4-5 Days',style: CustomStyle.nameOfStyle,))
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/smallcar.png'),
                  SizedBox(width: 3,),
                  Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Text('Delivery Charges',style: Custom.Style,)),
                  SizedBox(width: 120,),
                  Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Text('\$80.00',style:  Custom.Style,))
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/bage.png'),
                  SizedBox(width: 3,),
                  Container(

                      child: Text('Shipping Method',style: Custom.Style,)),
                ],
              ),
            ),
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                children: [
                Container(
                  height:20,
                  width: 20,
                  child: Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
              ),
                ),
                  SizedBox(width: 15,),
              Text(' Pay through Card',style: CustomStyle.nameOfStyle,),
                  SizedBox(width: 30,),
                  Container(
                    height: 31,
                    width: 86,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.green)
                    ),
                    child: Center(child: Text('Add Card',style: TextStyle(color: Colors.green),)),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: EvaluatedButton(buttonText: 'Confirm And Send', onPressed: () {

                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 308,
                      width: 347,
                      child: AlertDialog(
                        title: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                            child:   Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 210.0),
                                    child: Image.asset('assets/cross.png')),
                                Image.asset('assets/arrowicon.png'),
                              ],
                            ),),
                        content: Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.0,),
                          child: Text('Successfully Done',style:  TextStyle(
                              fontFamily: "Poppins",fontSize: 20,fontWeight: FontWeight.w600,color:Colors.green
                          ),),
                        ),
                 actions: [
                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                     child: Text('Your request has sent successfully',textAlign: TextAlign.center,style: CustomStyle.nameOfStyle),),
                 ],
                      ),
                    );
                  },
                );
              },),
            ),
          ],
        ),
      ),
    );
  }
}
