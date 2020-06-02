import 'package:flutter/material.dart';
import 'Tab.dart';

import 'Search.dart';
import 'Formate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter Demo', 
    home: Tabs(),
    routes: {
      '/formate':(context)=>FormatePage(),
      '/search':(context)=>SearchPage(),
    }
    );
  }
}

