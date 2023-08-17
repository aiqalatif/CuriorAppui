import 'package:courierapp/View/weight/appbar.dart';
import 'package:courierapp/View/weight/navBar.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';
class Trackingpart3 extends StatefulWidget {
  const Trackingpart3({Key? key}) : super(key: key);

  @override
  State<Trackingpart3> createState() => _Trackingpart3State();
}

class _Trackingpart3State extends State<Trackingpart3> {
  int activeStep = 0;
  int activeStep2 = 0;
  int reachedStep = 0;
  int upperBound = 5;
  final dashImages = [
    'assets/cycle.png',
    'assets/cycle.png',
    'assets/cycle.png',
    'assets/cycle.png',
    'assets/cycle.png',
    'assets/cycle.png',

  ];
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: CutomAppBar(title: 'My History',),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 35),
            child: Row(
              children: [
                Container(
                  height: 46,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Color(0xFF12BE80),width: 1),

                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Type Your Tracking ID',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Image.asset('assets/icons.png'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16.0,right: 260),
            child: EasyStepper(
              activeStep: activeStep,
              lineLength: 30,
              direction: Axis.vertical,
              stepShape: StepShape.rRectangle,
              stepBorderRadius: 15,
              borderThickness: 2,
              stepRadius: 18,
              finishedStepBorderColor: Colors.white,
              finishedStepTextColor: Colors.white,
              finishedStepBackgroundColor: Colors.white,
              activeStepIconColor: Colors.white,
              showLoadingAnimation: false,
              steps: [
                EasyStep(
                  customStep: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Opacity(
                      opacity: activeStep >= 0 ? 1 : 0.3,
                      child: Image.asset('assets/groseryicon.png'),
                    ),
                  ),
                  customTitle: const Text(
                    'Dash 1',
                    textAlign: TextAlign.center,
                  ),
                ),
                EasyStep(
                  customStep: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Opacity(
                      opacity: activeStep >= 1 ? 1 : 0.3,
                      child: Image.asset('assets/Sitting.png'),
                    ),
                  ),
                  customTitle: const Text(
                    'Dash 2',
                    textAlign: TextAlign.center,
                  ),
                ),
                EasyStep(
                  customStep: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Opacity(
                      opacity: activeStep >= 2 ? 1 : 0.3,
                      child: Image.asset('assets/icongreen.png'),
                    ),
                  ),
                  customTitle: SizedBox(),
                ),
                EasyStep(
                  customStep: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Opacity(
                      opacity: activeStep >= 3 ? 1 : 0.3,
                      child: Image.asset('assets/Home.png'),
                    ),
                  ),
                  customTitle: const Text(
                    'Dash 4',
                    textAlign: TextAlign.center,
                  ),
                ),
                EasyStep(
                  customStep: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Opacity(
                      opacity: activeStep >= 4 ? 1 : 0.3,
                      child: Image.asset('assets/Home.png'),
                    ),
                  ),
                  customTitle: const Text(
                    'Dash 5',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
              onStepReached: (index) => setState(() => activeStep = index),
            ),
          ),


        ],
      ),
    );
  }
}
