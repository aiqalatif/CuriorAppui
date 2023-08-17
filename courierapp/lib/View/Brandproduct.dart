import 'package:courierapp/View/weight/appbar.dart';
import 'package:courierapp/View/weight/coamline.dart';
import 'package:courierapp/View/weight/comanTextstyle.dart';
import 'package:courierapp/View/weight/navBar.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BrandProduct extends StatefulWidget {
  const BrandProduct({Key? key}) : super(key: key);

  @override
  State<BrandProduct> createState() => _BrandProductState();
}

class _BrandProductState extends State<BrandProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:NavBar(),
      appBar:CutomAppBar(title: 'Banned Products',),
      body: Column(
        children: [

          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text("Following are the banned products, in which we do not deal.",style: CustomStyle.nameOfStyle,),
          ),
          SizedBox(height: 15,),
          Coamline(),
          SizedBox(height: 15,),
          Coamline(),
          SizedBox(height: 15,),
          Coamline(),
          SizedBox(height: 15,),
          Coamline(),
          SizedBox(height: 15,),
          Coamline(),
          SizedBox(height: 15,),
          Coamline(),
          SizedBox(height: 15,),
          Coamline(),
        SizedBox(height: 15,),
          Coamline(),
          SizedBox(height: 15,),
          Coamline(),
        ],

      ),
    );
  }
}
