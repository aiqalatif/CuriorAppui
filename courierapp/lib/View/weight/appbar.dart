import 'package:courierapp/View/weight/navBar.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CutomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CutomAppBar({Key? key, required this.title}) : super(key: key);
   final String title;
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title:Text(title,style: TextStyle(color: Colors.black),),
      actions: [
        IconButton(
          onPressed: () {
            // Handle the action here
          },
          icon: Image.asset('assets/Notification.png'),  // Replace with the actual path to your image file
        ),

      ],
      iconTheme: IconThemeData(color: Colors.black),
    );
  }


}
