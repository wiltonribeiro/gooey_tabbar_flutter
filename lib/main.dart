import 'package:flutter/material.dart';
import 'MenuTabBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
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
