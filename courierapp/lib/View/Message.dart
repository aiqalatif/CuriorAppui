import 'package:courierapp/View/weight/appbar.dart';
import 'package:courierapp/View/weight/navBar.dart';
import 'package:courierapp/assets/assets.dart';
import 'package:flutter/material.dart';
class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:NavBar(),
      appBar:CutomAppBar(title: 'Message',),
      body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('New',style:  TextStyle(
                  fontFamily: "Poppins",fontSize: 15,fontWeight: FontWeight.w600,color:Color(0xFF727272)
              ),),
      SizedBox(width: 5,),
      Container(
          height: 19,
          width: 19,
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle
          ),
          child: Center(
            child: Text('1',style:  TextStyle(
                fontFamily: "Poppins",fontSize: 15,fontWeight: FontWeight.w600,color:Colors.white
            ),),
          ),
      ),
              SizedBox(width: 160,),
              Text('Mark All Read',style:  TextStyle(
                  fontFamily: "Poppins",fontSize: 15,fontWeight: FontWeight.w600,color:Colors.green
              ),),

            ],
          ),
        ),
        SizedBox(height: 22,),
        _container(),
        SizedBox(height: 18,),
        _container(),
        SizedBox(height: 18,),
        _container(),
        ],
      ),
    );
  }
  _container( ){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 23),
      height: 119,
      width: 382,
      decoration: BoxDecoration(
        color: Color(0xFFDEF4D4),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Text('Haitao Lixin',style: TextStyle(
                    fontFamily: "Poppins",fontSize: 13,fontWeight: FontWeight.w500,color:Color(0xFF727272),
                ),),
                SizedBox(width: 115,),
                Text('Today, 09:30 AM',style: TextStyle(
                    fontFamily: "Poppins",fontSize: 12,fontWeight: FontWeight.w500,color:Color(0xFF727272),
                ),),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Container(
                  height: 62,
                  width: 62,
                  child: CircleAvatar(
                    backgroundImage:AssetImage(ImageAssets.Rectangle),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 40,
                    width: 225,
                    child: Text('Hi, did you get my last message'
                        ' regarding the shipping requirements we have..',textAlign:TextAlign.center,style: TextStyle(
                        fontFamily: "Poppins",fontSize: 12,fontWeight: FontWeight.w500,color:Colors.grey
                    ),)),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
