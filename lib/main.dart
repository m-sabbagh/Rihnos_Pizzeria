import 'dart:collection';
import 'package:flutter/material.dart';
import 'PizzaItems.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'HomePage.dart';

void main() => runApp(
      MaterialApp(
        home: HomePage(),
      ),
    );

//Google Maps Page
class MapScreen extends StatefulWidget {
  const MapScreen({Key key}) : super(key: key);
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  var markers = HashSet<Marker>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          'Find us',
          style: TextStyle(
              color: Color(0xff800808),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(31.963158, 35.930359),
                zoom: 14.4746,
              ),
              onMapCreated: (GoogleMapController googleMapController) {
                setState(() {
                  markers.add(
                    Marker(
                      markerId: MarkerId('1'),
                      position: LatLng(31.963158, 35.930359),
                    ),
                  );
                });
              },
              markers: markers,
            ),
          ],
        ),
      ),
    );
  }
}
