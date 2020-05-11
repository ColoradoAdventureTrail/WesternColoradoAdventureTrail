import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import './fruita_lodging.dart';
import './fruita_restaurants.dart';
import 'package:flutterapp/Fruita/fruita_trails.dart';
import 'package:flutterapp/Fruita/fruita_check_in.dart';


class FruitaView_Trails extends StatelessWidget {
  final LatLng _center = const LatLng(39.157091, -108.772781);
  @override
  Widget build(BuildContext context) {
    Set<Marker> markers = new Set<Marker>();
    markers.add(Marker(
        markerId: MarkerId("Flume Canyon Trail"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        visible: true,
        position: LatLng(39.057125, -108.7972321),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CanyonRimTrail()));
        }));
    markers.add(Marker(
        markerId: MarkerId("Monument Canyon Loop Trail"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        visible: true,
        position: LatLng(39.0715671, -108.694049),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MonumentCanyonLoopTrail()));
        }));
    markers.add(Marker(
        markerId: MarkerId("Rattlesnake Arches Trail"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        visible: true,
        position: LatLng(39.057125,-108.7972017),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RattlesnakeArchesTrail()));
        }));
    return Scaffold(
      body: GoogleMap(
        cameraTargetBounds: CameraTargetBounds(LatLngBounds(
            southwest: LatLng(39.133834, -108.736866),
            northeast: LatLng(39.133834, -108.736866))),
        rotateGesturesEnabled: false,
        minMaxZoomPreference: MinMaxZoomPreference(10.0, 10.0),
        initialCameraPosition: CameraPosition(target: _center, zoom: 10.0),
        markers: markers,
      ),
    );
  }
}


class FruitaView_Restaurant extends StatelessWidget {

  final LatLng _center = const LatLng(39.157091, -108.732781);
  @override
  Widget build(BuildContext context) {
    Set<Marker> markers = new Set<Marker>();
    //restaurant
    markers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        markerId: MarkerId("Hot Tomato"),
        visible: true,
        position: LatLng(39.1594, -108.7322),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HotTomato()));
        }));
    markers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        markerId: MarkerId("Rib City Grill"),
        visible: true,
        position: LatLng(39.152869, -108.735573),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RibCityGrill()));
        }));

    markers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        markerId: MarkerId("Aspen Street Coffee"),
        visible: true,
        position: LatLng(39.158709, -108.732626),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AspenStreetCoffee()));
        }));
    return GoogleMap(
      cameraTargetBounds: CameraTargetBounds(LatLngBounds(
          southwest: LatLng(39.157091, -108.732781),
          northeast: LatLng(39.157091, -108.732781))),
      rotateGesturesEnabled: false,
      minMaxZoomPreference: MinMaxZoomPreference(16.0, 16.0),
      initialCameraPosition: CameraPosition(target: _center, zoom: 16.0),
      markers: markers,
    );
  }
}

class FruitaView_CheckIn extends StatelessWidget {

  final LatLng _center = const LatLng(39.153834, -108.736866);
  @override
  Widget build(BuildContext context) {
    Set<Marker> markers = new Set<Marker>();
    markers.add(Marker(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CheckInPage(), fullscreenDialog: true));
        },
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        markerId: MarkerId("Colorado Welcome Center"),
        visible: true,
        position: LatLng(39.153834, -108.736866)));
    return GoogleMap(
      cameraTargetBounds: CameraTargetBounds(LatLngBounds(
          southwest: LatLng(39.153834, -108.736866),
          northeast: LatLng(39.153834, -108.736866))),
      rotateGesturesEnabled: false,
      minMaxZoomPreference: MinMaxZoomPreference(16.0, 16.0),
      initialCameraPosition: CameraPosition(target: _center, zoom: 16.0),
      markers: markers,
    );
  }
}

class FruitaView_Lodging extends StatelessWidget {

  final LatLng _center = const LatLng(39.133031, -108.738304);
  @override
  Widget build(BuildContext context) {
    Set<Marker> markers = new Set<Marker>();
    //campgrounds
    markers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        markerId: MarkerId("Saddlehorn Campground"),
        visible: true,
        position: LatLng(39.105579, -108.732609),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SaddlehornCampground()));
        }));
    markers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        markerId: MarkerId("Monument RV Park"),
        visible: true,
        position: LatLng(39.149368, -108.736752),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MonumentRVPark()));
        }));
    markers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        markerId: MarkerId("James M. Robb"),
        visible: true,
        position: LatLng(39.149199, -108.741561),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => JamesMRobb()));
        }));
    return GoogleMap(
      cameraTargetBounds: CameraTargetBounds(LatLngBounds(
          southwest: LatLng(39.133031, -108.738304),
          northeast: LatLng(39.133031, -108.738304))),
      rotateGesturesEnabled: false,
      minMaxZoomPreference: MinMaxZoomPreference(13.0, 13.0),
      initialCameraPosition: CameraPosition(target: _center, zoom: 13.0),
      markers: markers,
    );
  }
}

class View {
  View(this.title, this.icon, this.color, this.view);
  String title;
  IconData icon;
  MaterialColor color;
  Widget view;
}

List<View> allViews = <View>[
  View('Fruita Trails', Icons.nature, Colors.green, FruitaView_Trails()),
  View('Fruita Restaurants', Icons.restaurant, Colors.red, FruitaView_Restaurant()),
  View('Fruita Lodging', Icons.hotel, Colors.blue, FruitaView_Lodging()),
  View('Fruita Check-in', Icons.check, Colors.orange, FruitaView_CheckIn()),
];

class FruitaView extends StatefulWidget {
  const FruitaView({Key key, this.view}) : super(key: key);
  final View view;

  @override
  _FruitaViewState createState() => _FruitaViewState();
}

class _FruitaViewState extends State<FruitaView> {
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
      text: 'sample text: ${widget.view.title}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.view.title}'),
          backgroundColor: widget.view.color,
        ),
        backgroundColor: widget.view.color[100],
        body: widget.view
            .view
        );
  }
}

class Fruita_Home extends StatefulWidget {
  @override
  _Fruita_Home_State createState() => _Fruita_Home_State();
}

class _Fruita_Home_State extends State<Fruita_Home> {
  //final LatLng _center = const LatLng(39.1589, -108.7290);
  int current = 0;

  GoogleMap map = GoogleMap(
      rotateGesturesEnabled: false,
      minMaxZoomPreference: MinMaxZoomPreference(7.0, 14.0),
      initialCameraPosition:
          CameraPosition(target: LatLng(39.1589, -108.7290), zoom: 8.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: current,
          children: allViews.map<Widget>((View view) {
            return FruitaView(view: view);
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (int index) {
          setState(() {
            current = index;
          });
        },
        items: allViews.map((View view) {
          return BottomNavigationBarItem(
              icon: Icon(view.icon),
              backgroundColor: view.color,
              title: Text(view.title));
        }).toList(),
      ),
    );
  }
}
