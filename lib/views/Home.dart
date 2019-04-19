import 'package:flutter/material.dart';
import 'package:menu_tabbar/components/MenuTabBar.dart';

class Home extends StatefulWidget {

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new SafeArea(child: new Stack(children: <Widget>[
          new Center(child:
            new Text("View", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))
          ),
          new MenuTabBar(
            background: Colors.blue,
            iconButtons: [
              new IconButton(color: Colors.blue, icon: new Icon(Icons.home, size: 30), onPressed: (){}),
              new IconButton(color: Colors.blue, icon: new Icon(Icons.search, size: 30), onPressed: (){}),
              new IconButton(color: Colors.blue, icon: new Icon(Icons.map, size: 30), onPressed: (){}),
              new IconButton(color: Colors.blue, icon: new Icon(Icons.favorite, size: 30), onPressed: (){}),
            ],
            child: new Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              new Container(child: new Text("Reminder", style: TextStyle(color: Colors.white, fontSize: 20)), margin: EdgeInsets.all(10)),
              new Container(child: new Text("Camera", style: TextStyle(color: Colors.white, fontSize: 20)), margin: EdgeInsets.all(10)),
              new Container(child: new Text("Attchment", style: TextStyle(color: Colors.white, fontSize: 20)), margin: EdgeInsets.all(10)),
              new Container(child: new Text("Text Note", style: TextStyle(color: Colors.white, fontSize: 20)), margin: EdgeInsets.all(10))
            ]),
          )
        ]))
    );
  }
}