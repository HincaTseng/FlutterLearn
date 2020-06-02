import 'package:flutter/material.dart';
import 'Search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.cyan,
          height: 30,
          // width: 140,
          child: RaisedButton(
            onPressed: () {
             Navigator.pushNamed(context, '/search');
            },
            child: Text("跳转到搜索页面"),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(height: 50.0),
        
        Container(
          color: Colors.brown,
          height: 40,
          // width: 140,
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/formate');
            },
            child: Text("跳转到表单页面"),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );
  }
}
