import 'package:courierapp/View/Brandproduct.dart';
import 'package:courierapp/View/Message.dart';
import 'package:courierapp/View/Privacypolicy.dart';
import 'package:courierapp/View/Sitting.dart';
import 'package:flutter/material.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    final name='Haya Khan';
    final email='hayakhan526@gmail.com';

    final Padding=EdgeInsets.symmetric(horizontal: 20);

    return Drawer(
      child:Material(
        color: Color(0xFF00B74F),
        child: ListView(
          padding: Padding,
          children: [
            _buildHeader(asset: "assets/Picuser.png",
                name: 'Haya Khan',
                email: 'hayakhan526@gmail.com', onClicked: () {  }),
            SizedBox(height: 40,),
            buildMenuitem(text: 'Messages', assetPath: 'assets/Messageicon.png',
                onClicked:()=>selectedItem(context, 0)),
            SizedBox(height: 10,),
            buildMenuitem(text: 'Prohibited Items', assetPath: 'assets/Prohibt.png',
                onClicked:()=>selectedItem(context, 1)  ),
            SizedBox(height: 10,),
            buildMenuitem(text: 'Settings', assetPath: 'assets/carbon.png',
                onClicked: ()=>selectedItem(context, 2)),
            SizedBox(height: 10,),
            buildMenuitem(text: 'FAQ', assetPath: 'assets/Faq.png',
                onClicked:()=>selectedItem(context, 3)),
            SizedBox(height: 10,),
            buildMenuitem(text: 'Privacy Policy', assetPath: 'assets/privacy.png',
                onClicked:()=>selectedItem(context, 4)),
            SizedBox(height: 10,),
            buildMenuitem(text: 'Help Desk', assetPath: 'assets/Help.png',
                onClicked:()=>selectedItem(context, 5)),
            SizedBox(height: 10,),
            buildMenuitem(text: 'Logout', assetPath: 'assets/logout.png',
                onClicked:()=>selectedItem(context, 5)),

          ],
        ),
      ),
    );
  }

  Widget buildMenuitem({
    required String text,
    required String assetPath,
    VoidCallback? onClicked,
})
  {
    final color=Colors.white;
    final hoverColor=Color(0xFF10CA87);
    return ListTile(
      leading:  SizedBox(
        width: 40.w,
        child: Image.asset(
          assetPath,
          height: 30.h,
          width: 19.w,
        ),
      ),
      title: Text(text,style: TextStyle(color: color),),
      hoverColor: hoverColor,
      onTap: (){},
    );
  }

  void selectedItem(BuildContext context,int index){
    Navigator.of(context).pop();
    switch(index){
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>Message()),
        );
        break;
       case 1:
         Navigator.push(
             context, MaterialPageRoute(builder: (context) =>   BrandProduct()));
         break;
       case 2:
         Navigator.push(
             context, MaterialPageRoute(builder: (context) =>  setting()));
         break;
       case 3:
         Navigator.push(
             context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));
         break;
       case 4:
         Navigator.push(
             context, MaterialPageRoute(builder: (context) =>  PrivacyPolicy()));
         break;
       case 5:
         Navigator.push(
             context, MaterialPageRoute(builder: (context) =>   BrandProduct()));
         break;

    }

  }

  Widget _buildHeader({
    required String asset,
    required String name,
    required String email,
    required VoidCallback onClicked,

  }
)=>InkWell(
    onTap: onClicked,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 65,left: 25),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage:AssetImage(asset),radius: 30,
              ),
              SizedBox(width: 8.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(name,style: TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(width: 55.h,),
                      Container(
                        height: 29.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage(ImageAssets.Edit) ,)
                        ),
                      )
                    ],
                  ),
                 SizedBox(height: 6.h,),
                  Text(email,style: TextStyle(color: Colors.white,fontSize: 13),),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}



