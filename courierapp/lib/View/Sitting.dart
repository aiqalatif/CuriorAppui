import 'package:courierapp/View/weight/appbar.dart';
import 'package:courierapp/View/weight/navBar.dart';
import 'package:flutter/material.dart';
class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  bool _isSwitched = false;
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:NavBar(),
      appBar: CutomAppBar(title: 'Setting',),
      body: Column(
        children: [
          SizedBox(height: 20,),
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
           child: Material(
             elevation: 6,
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 border:  Border.all(
                   color: Colors.white,
                   width: 1,
                 ),
               ),
               height: 58,
               width: 379,
               child: Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 15.0,top: 10),
                     child: Text("Default Location"),
                   ),
        Padding(
              padding: const EdgeInsets.only(left: 131,top: 10),
              child: Switch(
              value: _isSwitched,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
                activeColor: Colors.green,
      ),
        ),

                 ],
               ),
             ),
           ),
         ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              elevation: 6,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:  Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                height: 58,
                width: 379,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,top: 10),
                      child: Text("Text Messages"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 131,top: 10),
                      child: Switch(
                        value: _isSwitched,
                        onChanged: (bool value) {
                          setState(() {
                            _isSwitched = value;
                          });

                        },
                        activeColor: Colors.green,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              elevation: 6,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:  Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                height: 58,
                width: 379,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,top: 10),
                      child: Text("Text Messages"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 131,top: 10),
                      child: Switch(
                        value: _isSwitched,
                        onChanged: (bool value) {
                          setState(() {
                            _isSwitched = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),

                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
