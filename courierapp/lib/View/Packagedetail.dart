import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:courierapp/View/RequestPackage.dart';
import 'package:courierapp/View/weight/ComanButton.dart';
import 'package:courierapp/View/weight/GridView.dart';
import 'package:courierapp/View/weight/appbar.dart';
import 'package:courierapp/View/weight/gridview2.dart';
import 'package:courierapp/View/weight/navBar.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PackageDetail extends StatefulWidget {
  const PackageDetail({Key? key}) : super(key: key);

  @override
  State<PackageDetail> createState() => _PackageDetailState();
}

class _PackageDetailState extends State<PackageDetail> {
  @override
  Color color =Color(0xFF95999B);
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
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
         drawer: NavBar(),
       appBar: CutomAppBar(title: 'Request Package',),
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
          child:Text("Package Category ",style: TextStyle(
              fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w600,color:Color(0xFF727272)
          ),),
        ),
      Container(
        width: 300,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButton(
          isExpanded: true,
           hint: Text(
             "Select Item Type",
             style: TextStyle(color: Colors.grey),
             textAlign: TextAlign.end,
           ),
        // Initial Value
        value: dropdownvalue,

        // Down Arrow Iconicon: const Icon(Icons.keyboard_arrow_down),

        // Array list of items
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
    ),
      ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child:Text("Package Type",style: TextStyle(
              fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w600,color:Color(0xFF727272)
          ),),
        ),
     SizedBox(height: 5,),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              setState(() {
                color=Colors.green;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: color),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 50,
              width: 153,
              child: Center(child: Text('Shatter Resistant',style:TextStyle(color: color))),
            ),
          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: (){
              setState(() {
                color=Colors.green;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: color),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 50,
              width: 153,
              child: Center(child: Text('Shatter Resistant',style: TextStyle(color:color),)),
            ),
          ),
        ],
      ),
    ),

        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child:Text("Package Size ",style: TextStyle(
              fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w600,color:Color(0xFF727272)
          ),),
        ),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              HomeGridBox(assetPath: 'assets/gridviewbox.png', title: '> 1kg',),
              SizedBox(width: 10,),
              HomeGridBox(assetPath: 'assets/gridboxes.png', title: '1Kg -5kg',),
              SizedBox(width: 10,),
              HomeGridBox(assetPath: 'assets/gridboxes.png', title: '5Kg -10kg',),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child:Text("Package Image",style: TextStyle(
              fontFamily: "Poppins",fontSize: 14,fontWeight: FontWeight.w600,color:Color(0xFF727272)
          ),),
        ),
        SizedBox(height: 5,),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 105.0),
          height: 77,
          width: 211,
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            border:Border.all(color: Color(0xFFE2E3E4)),
          ),
          child: Column(
            children: [
              SizedBox(height: 13,),
             Image.asset('assets/camer.png'),
              SizedBox(height: 7,),
          Container(
             margin: EdgeInsets.symmetric(horizontal:19 ),
            height: 21.h,
            width: 100.w,
            child: ElevatedButton(
              onPressed: (){},
              style:  ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.green)
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF00B74F)),
              ),
              child: Text('Add Image',
                style:TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w400),),
            ),
          ),
            ],
          ),
        ),SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 128.0),
          child: Text('Add multiple images',
            style:TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w400),),
        ),
        SizedBox(height: 21,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Text('Add multiple images',
            style:TextStyle(color:Color(0xFF727272),fontSize: 14,fontWeight: FontWeight.w600),),
        ),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              HomeGridView2(assetPath: 'assets/cycle.png', title: 'Same Day', text: '4-5 hours',),
              SizedBox(width: 10,),
              HomeGridView2(assetPath: 'assets/tack.png', title: 'Express', text: '4-5 hours',),
              SizedBox(width: 10,),
              HomeGridView2(assetPath: 'assets/tack.png', title: 'Regular', text: '4-5 hours',),
            ],
          ),
        ),
        SizedBox(height: 21,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Text('Any Note ',
            style:TextStyle(color:Color(0xFF727272),fontSize: 14,fontWeight: FontWeight.w600),),
        ),
       SizedBox(height: 5,),
        Padding(
          padding:  EdgeInsets.symmetric( horizontal: 24.w),
          child: TextField(
            style: TextStyle(fontSize: 18.0),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 100.0.h, horizontal: 25.0.w),
              hintText: "Type here",
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
              MaterialPageRoute(builder: (context) => RequestPackage()),
            );
          },),
        ),
      ],
    ),
  ),
    );
  }
}
