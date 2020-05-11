import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutterapp/Fruita/fruita_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Western Colorado Adventure Trail",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final LatLng _center = const LatLng(38.995503, -108.5540697);

  @override
  Widget build(BuildContext context) {
    Set<Marker> markers = new Set(); // create a class that extends markers
    markers.add(Marker(
        markerId: MarkerId("Fruita"),
        position: LatLng(39.1589, -108.7290),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Fruita_Home()));
        }));
    markers.add(Marker(
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Palisade"),
        position: LatLng(39.1103, -108.3509)));
    markers.add(Marker(
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Ouray"),
        position: LatLng(38.0228, -107.6714)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Grand Junction"),
        position: LatLng(39.0639, -108.5506)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Gateway"),
        position: LatLng(38.6807, -108.9769)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Montrose"),
        position: LatLng(38.4783, -107.8762)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.2),
        markerId: MarkerId("Ridgeway"),
        position: LatLng(38.1526, -107.7556)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Durango"),
        position: LatLng(37.2753, -107.8801)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Cortez"),
        position: LatLng(37.3489, -108.5859)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Dolores"),
        position: LatLng(37.4739, -108.5045)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Telluride"),
        position: LatLng(37.9375, -107.8123)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Silverton"),
        position: LatLng(37.8119, -107.6645)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Silverton"),
        position: LatLng(37.8119, -107.6645)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Nucla/Naturita"),
        position: LatLng(38.2694, -108.5479)));
    markers.add(Marker(
        rotation: 0,
        anchor: Offset(0.5, 1.0),
        markerId: MarkerId("Norwood"),
        position: LatLng(38.1305, -108.2923)));
    return Scaffold(
        appBar: AppBar(title: Text("Western Colorado Adventure Trail")),
        body: GoogleMap(
          rotateGesturesEnabled: false,
          cameraTargetBounds: CameraTargetBounds(LatLngBounds(
              southwest: LatLng(38.995503, -108.5540697),
              northeast: LatLng(38.995503, -108.5540697))),
          minMaxZoomPreference: MinMaxZoomPreference(7.9, 9.75),
          markers: markers,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 8.0,
          ),
        ));
  }
}