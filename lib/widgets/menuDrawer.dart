import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: SafeArea(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Ink(
              color: Theme.of(context).primaryColor,
              child: ListTile(
                title: Text('Stateless', style: TextStyle(color: Colors.white)),
              )),
          ListTile(
            title: Text('Simple stateless 1'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/simpleStatelessScreen1');
            },
          ),
          ListTile(
            title: Text('Simple stateless 2'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/simpleStatelessScreen2');
            },
          ),
          ListTile(
            title: Text('Animated navigation'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/animatedNavigationScreen');
            },
          ),
          Ink(
              color: Theme.of(context).primaryColor,
              child: ListTile(
                title: Text('Stateful', style: TextStyle(color: Colors.white)),
              )),
          ListTile(
            title: Text('Simple stateful'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/simpleStatefulScreen');
            },
          ),
          Ink(
              color: Theme.of(context).primaryColor,
              child: ListTile(
                title: Text('Package', style: TextStyle(color: Colors.white)),
              )),
          ListTile(
            title: Text('Map'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/mapScreen');
            },
          )
        ],
      ),
    ));
  }
}
