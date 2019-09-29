import 'package:flutter/material.dart';
import 'package:flutter_app_dmca_38/screens/animatedNavigationScreen.dart';
import 'package:flutter_app_dmca_38/screens/mapScreen.dart';
import 'package:flutter_app_dmca_38/screens/simpleStatefulScreen.dart';
import 'package:flutter_app_dmca_38/screens/simpleStatelessScreen1.dart';
import 'package:flutter_app_dmca_38/screens/simpleStatelessScreen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DMCA_38',
      home: SimpleStatelessScreen1(title: 'Simple Stateful Screen'),
      // initialRoute: '/simpleStatefulScreen',
      routes: {
        '/simpleStatefulScreen': (context) => SimpleStatefulScreen(title: 'Simple Stateful Screen'),
        '/simpleStatelessScreen1': (context) => SimpleStatelessScreen1(title: 'Simple Stateless Screen 1'),
        '/simpleStatelessScreen2': (context) => SimpleStatelessScreen2(title: 'Simple Stateless Screen 2'),
        '/animatedNavigationScreen': (context) => AnimatedNavigationScreen(),
        '/mapScreen': (context) => MapScreen(title: 'Leaflet map'),
      }
    );
  }
}
