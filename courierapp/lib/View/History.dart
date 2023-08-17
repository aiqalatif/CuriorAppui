import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_stepper/easy_stepper.dart';
class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 800.h,
        child: Column(
        children: [
          SingleChildScrollView(
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
                  customTitle: const Text(
                    'Dash 3',
                    textAlign: TextAlign.center,
                  ),
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
      ),),
    );
  }
}
