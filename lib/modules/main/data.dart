import 'package:flutter/material.dart';

const bottomNavigationBarItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.store),
    label: 'Store',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profile',
  ),
];

const List<Widget> bottomNavigationBarContents = <Widget>[
  Text('x', textAlign: TextAlign.center),
  Text('y', textAlign: TextAlign.center),
  Text('z', textAlign: TextAlign.center),
];
