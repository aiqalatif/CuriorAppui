import 'package:courierapp/View/History.dart';
import 'package:courierapp/View/Treding.dart';
import 'package:courierapp/View/home.dart';
import 'package:courierapp/View/myHistory.dart';
import 'package:courierapp/View/profile.dart';
import 'package:courierapp/View/weight/Controller.dart';
import 'package:courierapp/assets/assets.dart';
import'package:flutter/material.dart';
import 'package:get/get.dart';
class bottomappbr extends StatefulWidget {
  const bottomappbr({Key? key}) : super(key: key);
  @override
  State<bottomappbr> createState() => _bottomappbrState();
}

class _bottomappbrState extends State<bottomappbr> {
  final Screen=[
    Home(),
  ];
  final controller=Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context){
      return Scaffold(body:
        IndexedStack(
          index: controller.tabIndex,
          children:  [  Home(), Tracking(),MyHostory(), Profile(),  ],
        ),
          floatingActionButton: Stack(
            children: [
              Positioned(
                top: 660,
                left: 170,
                child: Container(
                  height: 50,
                  width: 50,
                  child: FloatingActionButton(
                    onPressed: () {  },
                  child:Image(image: AssetImage(ImageAssets.bo)),
              backgroundColor: Color(0xFFFFD100),
              mini: true,


        ),
                ),
              ),]
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:Color(0xFF7B6F72),
          unselectedItemColor: Color(0xFF389CFF),
          currentIndex: controller.tabIndex,
          onTap:controller.changeTabIndex,
          items: [
            _bottombarItem(Image(image: AssetImage(ImageAssets.Home)),'Home'),
            _bottombarItem(Image(image: AssetImage(ImageAssets.tracking)),'Tracking'),
            _bottombarItem(Image(image: AssetImage(ImageAssets.Clock)),'History'),
            _bottombarItem(Image(image: AssetImage(ImageAssets.profileicon)),'Profile'),
          ],),
      );
    });
  }
}
_bottombarItem(Image icon,String label) {
  return BottomNavigationBarItem(icon:icon ,label: label);
}