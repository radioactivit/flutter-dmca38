import 'package:flutter/material.dart';
import 'package:flutter_app_dmca_38/widgets/menuDrawer.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class MapScreen extends StatelessWidget {
  final String title;
  MapScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: FlutterMap(
        options: new MapOptions(
          center: new LatLng(43.617624, 7.050077),
          zoom: 16.0,
        ),
        layers: [
          new TileLayerOptions(
            urlTemplate: "https://api.tiles.mapbox.com/v4/"
                "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
            additionalOptions: {
              'accessToken': '<PUT_ACCESS_TOKEN_HERE>',

              'id': 'mapbox.streets',
            },
          ),
          new MarkerLayerOptions(
            markers: [
              new Marker(
                width: 80.0,
                height: 80.0,
                point: new LatLng(43.617624, 7.050077),
                builder: (ctx) =>
                new Container(
                  child: new FlutterLogo(),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: MenuDrawer(),
    );
  }
}
