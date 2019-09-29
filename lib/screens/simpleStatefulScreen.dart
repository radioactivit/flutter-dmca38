import 'package:flutter/material.dart';
import 'package:flutter_app_dmca_38/widgets/menuDrawer.dart';

class SimpleStatefulScreen extends StatefulWidget {
  SimpleStatefulScreen({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _SimpleStatefulScreenState createState() => _SimpleStatefulScreenState();
}

class _SimpleStatefulScreenState extends State<SimpleStatefulScreen> {
  int _counter = 0;

  final tabImage = [
    'https://media.giphy.com/media/cpRQzY4VS3V3W/giphy.gif',
    'https://media.giphy.com/media/PgwAgf7fbMrsY/giphy.gif',
    'https://media.giphy.com/media/PIjSfrr66wS9q/giphy.gif',
    'https://media.giphy.com/media/rznp6Q03oLGrC/giphy.gif',
    'https://media.giphy.com/media/vTxWtmX2b0oH6/giphy.gif',
    'https://media.giphy.com/media/MaCAVIpjoelYQ/giphy.gif',
    'https://media.giphy.com/media/eT2vqlVcfZySs/giphy.gif',
    'https://media.giphy.com/media/FAP7Evfs3TzOw/giphy.gif',
    'https://media.giphy.com/media/1TRF8Pa27HPdS/giphy.gif',
    'https://media.giphy.com/media/12JpPjiMQiSWWs/giphy.gif',
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Image.network(tabImage[_counter%10])
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      drawer: MenuDrawer(),
    );
  }
}