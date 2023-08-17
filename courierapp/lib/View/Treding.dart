import 'dart:async';
import 'dart:typed_data';
import 'package:courierapp/View/weight/appbar.dart';
import 'package:courierapp/View/weight/navBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
class Tracking extends StatefulWidget {
  const Tracking({Key? key}) : super(key: key);
  @override
  State<Tracking> createState() => TrackingState();
}
class TrackingState extends State<Tracking> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);
  List<String> images = [ 'assets/Home.png' ,'assets/Restaurant.png',];
  @override
  void initState() {
    getPolyPoints();
    setCustomMarkerIcon();
    super.initState();
  }
  @override
  List<LatLng> polylineCoordinates = [];
  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      'AIzaSyBuFLF_zkyFja0Ca6OLrSZKF0ZQvci_MJs', // Your Google Map Key
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach(
            (PointLatLng point) => polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});

    }

  }


  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  void setCustomMarkerIcon() {
    BitmapDescriptor.fromAssetImage(
        ImageConfiguration.empty, "assets/Home.png")
        .then(
          (icon) {
        sourceIcon = icon;
      },
    );
    BitmapDescriptor.fromAssetImage(
        ImageConfiguration.empty, "assets/Restaurant.png")
        .then(
          (icon) {
        destinationIcon = icon;
      },
    );
  }



 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar:CutomAppBar(title: 'Tracking',) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children:[
                Container(
                  height: 749.h,
                  child: GoogleMap(
                  initialCameraPosition: const CameraPosition(
                    target: sourceLocation,
                    zoom: 13.5,
                  ),
                  markers: {
                    Marker(
                      markerId: const MarkerId("source"),
                      icon: sourceIcon,
                      position: sourceLocation,
                    ),
                    Marker(
                      markerId: MarkerId("destination"),
                      icon: destinationIcon,
                      position: destination,
                    ),
                  },
                  onMapCreated: (mapController) {
                    _controller.complete(mapController);
                  },
                  polylines: {
                    Polyline(
                      polylineId: const PolylineId("route"),
                      points: polylineCoordinates,
                      color: const Color(0xFFFFB265),
                      width: 6,
                    ),
                  },
              ),
                ),
               Container(
                 child: Positioned(
                 top: 50, child: Column(
                    children: [
                      Row(
                      children: [
                         Container(
                           height: 46,
                           width: 250,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                             border: Border.all(color: Color(0xFF12BE80),width: 1),

                           color: Colors.white),
                           child: TextField(
                             textAlign: TextAlign.center,
                             decoration: InputDecoration(
                               hintText: 'Type Your Tracking ID',
                               border: InputBorder.none,
                             ),

                           ),
                         ),
                        SizedBox(width: 5,),
                        Image.asset('assets/iconsearch.png'),
                       ],
                 ),
                    Container(
                      margin: EdgeInsets.only(top: 400),
                      height: 80.h,
                      width: 450.w,
                      decoration: BoxDecoration(
                        color: Colors.green
                      ),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Image.asset('assets/parsalicon.png')),
                          Container(
                            width: 180,
                              child:
                              Text('Jackson is the way to pickup the parsel',style: TextStyle(color: Colors.white),)),
                          SizedBox(width: 20.w,),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                              child: Image.asset('assets/phoneicon.png')),
                        ],
                      ),
                    ),
                    ],
                  )),
               ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}


