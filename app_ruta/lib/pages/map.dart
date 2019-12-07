import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'maps/route.dart';
import './successfull.dart';

  String searchAddr;
  final Set<Marker> _markers = {};
  final Set<Polyline>_polyline={};
  
  bool band1 = true;
  bool band2 = true;
  List<LatLng> latlng = List();
  List<LatLng> latlng1 = List();

  bool bandHeight = false;

LatLng _c1 = LatLng(22.151250, -101.027717);
  LatLng _c2 = LatLng(22.151727, -101.025979);
  LatLng _c3 = LatLng(22.151787, -101.024649);
  LatLng _c4 = LatLng(22.151707, -101.022717);
  LatLng _c5 = LatLng(22.151131, -101.021001);
  LatLng _c6 = LatLng(22.150649, -101.019634);
  LatLng _c7 = LatLng(22.148661, -101.019634);
  LatLng _c8 = LatLng(22.147494, -101.018840);
  LatLng _c9 = LatLng(22.146560, -101.018732);
  LatLng _c10 = LatLng(22.145466, -101.017595);
  LatLng _c11 = LatLng(22.144686, -101.016857);
  LatLng _c12 = LatLng(22.144536, -101.015201);

  LatLng _c21 = LatLng(22.151250, -101.027717);
  LatLng _c22 = LatLng(22.152040, -101.029944);
  LatLng _c23 = LatLng(22.153769, -101.027627);
  LatLng _c24 = LatLng(22.153789, -101.024000);
  LatLng _c25 = LatLng(22.154271, -101.019677);
  LatLng _c26 = LatLng(22.152234, -101.019559);
  LatLng _c27 = LatLng(22.150649, -101.019634);
  LatLng _c28 = LatLng(22.148661, -101.019634);
  LatLng _c29 = LatLng(22.147494, -101.018840);
  LatLng _c30 = LatLng(22.146560, -101.018732);
  LatLng _c31 = LatLng(22.145466, -101.017595);
  LatLng _c32 = LatLng(22.144536, -101.015201);


  

  
  LatLng position2 = _c1;
  LatLng position1 = _c12;

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(22.144536, -101.015201);
  static const LatLng _center2 = const LatLng(22.144686, -101.016857);
  
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(22.150843, -101.026600),
    
    zoom: 14.4746,
  );

  void _onCameraMove(CameraPosition position){
    position2 = position.target;
  }

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(22.150843, -101.026600),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    
  
    latlng.add(_c1);
    latlng.add(_c2);
    latlng.add(_c3);
    latlng.add(_c4);
    latlng.add(_c5);
    latlng.add(_c6);
    latlng.add(_c7);
    latlng.add(_c8);
    latlng.add(_c9);
    latlng.add(_c10);
    latlng.add(_c11);
    latlng.add(_c12);
    latlng.add(_c11);
    latlng.add(_c10);
    latlng.add(_c9);
    latlng.add(_c8);
    latlng.add(_c7);
    latlng.add(_c6);
    latlng.add(_c5);
    latlng.add(_c4);
    latlng.add(_c3);
    latlng.add(_c2);
    latlng.add(_c1);

    latlng1.add(_c21);
    latlng1.add(_c22);
    latlng1.add(_c23);
    latlng1.add(_c24);
    latlng1.add(_c25);
    latlng1.add(_c26);
    latlng1.add(_c27);
    latlng1.add(_c28);
    latlng1.add(_c29);
    latlng1.add(_c30);
    latlng1.add(_c31);
    latlng1.add(_c32);
    latlng1.add(_c31);
    latlng1.add(_c30);
    latlng1.add(_c29);
    latlng1.add(_c28);
    latlng1.add(_c27);
    latlng1.add(_c26);
    latlng1.add(_c25);
    latlng1.add(_c24);
    latlng1.add(_c23);
    latlng1.add(_c22);
    latlng1.add(_c21);


    return new Scaffold(

      body: Stack(
      children: <Widget>[
        Container(
          
              height: checkH(context),
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                onCameraMove: _onCameraMove,
                markers: _markers,
                
                polylines: _polyline,
                
              ),
              
            ),
      Positioned(
          top: 50.0,
          right: 15.0,
          left: 15.0,
          child: Container(
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Buscar...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: (){
                      searchandNavigate();
                      bandHeight=true;
                      },
                      iconSize: 30.0)),
                      onChanged: (val) {
                      setState(() {
                  searchAddr = val;
                });
              },
            ),
          ),
        ),
      ],
     
      ), 
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Complete()),
            );
          },
        label: Text(''),
        icon: Icon(Icons.arrow_right),
      ),  
    
    );
  }

  searchandNavigate(){
    if(band1 == true){
      setState(() {
        _markers.add(Marker(
          markerId: MarkerId(position1.toString()),
          position: position1,
          icon: BitmapDescriptor.defaultMarker,
        ));
        band1 = false;
      });
      _polyline.add(Polyline(
                polylineId: PolylineId('1'),
                visible: true,
                //latlng is List<LatLng>
                points: latlng,
                color: Colors.green,
              ));
      _polyline.add(Polyline(
        polylineId: PolylineId('2'),
        visible: true,
        //latlng is List<LatLng>
        points: latlng1,
        color: Colors.red,
      ));
    }

  }

  setNavigation(){
    if(band2 == true){
      print('dd');
      _goToTheLake();
      setState(() {
        _markers.add(Marker(
          markerId: MarkerId(position2.toString()),
          position: position1,
          icon: BitmapDescriptor.defaultMarker,
        ));
      });
      band2= false;
    }
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

double checkH(BuildContext context){
  double h;
  if(bandHeight == true)
    h = (MediaQuery.of(context).size.height)/2 + (MediaQuery.of(context).size.height)/5;
  else 
    h = (MediaQuery.of(context).size.height);
  
  return (h);
}

