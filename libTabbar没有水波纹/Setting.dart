import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("我是一条数据"),
        ),
        ListTile(
          title: Text("我是第二条数据"),
        ),
        ListTile(
          title: Text("我是第三条数据"),
        ),
      ],
    );
  }
}