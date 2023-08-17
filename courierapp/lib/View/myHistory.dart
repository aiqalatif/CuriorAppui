import 'package:courierapp/View/weight/appbar.dart';
import 'package:courierapp/View/weight/comandrpdwon.dart';
import 'package:courierapp/View/weight/navBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:courierapp/assets/assets.dart';
class MyHostory extends StatefulWidget {
  const MyHostory({Key? key}) : super(key: key);

  @override
  State<MyHostory> createState() => _MyHostoryState();
}

class _MyHostoryState extends State<MyHostory> {
  String dropdownvalue = '10000';
  String dropdwval = 'Daily';
  var items = [
    '10000',
    '2000',
    '30000',
    '40000',
    '50000',
  ];
  var Duration = [
    'Daily',
    'Weekly',
    'Monthly',
    'yearly',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: CutomAppBar(title: 'My History',),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 20,),
           CommonDropDown(items:items.map((String items) {
             return DropdownMenuItem(
               value: items,
               child: Text(items),
             );
           }).toList(),
             onChanged: (String? newValue) {
               setState(() {
                 dropdwval = newValue!;
               });
             }, image: 'assets/greenbox.png',color: Color(0xFFE7F8F2),),
           SizedBox(height: 5,),
           GestureDetector(
             child: CommonDropDown(items:items.map((String items) {
               return DropdownMenuItem(
                 value: items,
                 child: Container(
                   height: 400,
                     width: 200,
                     child: Column(
                       children: [
                         Text('Pickup Address'),
                         Row(
                           children: [
                             Text('Sender Name :'),
                             SizedBox(width: 50,),
                             Text('Haya Khan'),
                           ],
                         ),

                       ],
                     )),
               );
             }).toList(),
               onChanged: (String? newValue) {
                 setState(() {
                   dropdwval = newValue!;
                 });
               }, image: 'assets/greencycle.png', color: Color(0xFFF8FDFC),),
           ),
         ],
       ),
    );
  }

//   Widget _buildHeader({
//   required String asset,
//
//
//
//
// })
//   {
//     return new
//
//   }
}
