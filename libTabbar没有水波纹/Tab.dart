import 'package:flutter/material.dart';
import 'Home.dart';
import 'Setting.dart';
import 'Thred.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List _pageList = [
    Home(),
    Setting(),
    Three(),
  ];
  int _cuttentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tabbar"),
      ),
      
      body: this._pageList[this._cuttentIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          brightness: Brightness.light,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _cuttentIndex,
          onTap: (index) {
            setState(() {
              _cuttentIndex = index;
              
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('设置')),
           BottomNavigationBarItem(icon: Icon(Icons.category), title: Text('分类')),
          ],
        ),
      ),
    );
  }
}

/*
bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._cuttentIndex,
        onTap: (int index) {
          setState(() {
            this._cuttentIndex = index;
            print(this._cuttentIndex);
          });
        },
        type: BottomNavigationBarType.fixed,
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("home"),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            title: Text("wallte"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("setting"),
          ),
        ],
      ),
    );
  }
}

*/
