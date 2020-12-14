import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Map'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  GoogleMapController _controller;

  static final CameraPosition initialLocation = CameraPosition(

    target: LatLng(30.3753, 69.3451), //pakistan's latlng
    zoom: 15,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        padding: EdgeInsets.all(20.0),
        initialCameraPosition: initialLocation,
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
        },

      ),
    );
  }
}
