import 'package:flutter/material.dart';
import 'package:startup_namer/home.dart';

/* 动态装置StatefulWidget--HomePage */
class HomePage extends StatefulWidget {
  @override
  final parentContext;
  HomePage(this.parentContext);

  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return materialHome;
  }
}

Widget materialHome = new MaterialApp(
  title: 'Flutter Demo',
  routes: <String, WidgetBuilder>{
    "/main": (BuildContext context) => new MainPage(),
  },
  theme: new ThemeData(
    primarySwatch: Colors.brown,
  ),
  debugShowCheckedModeBanner: false,
  home: new Scaffold(
    body: new Container(
      padding: new EdgeInsets.fromLTRB(15, 0, 15, 15),
      child: new ListView.builder(
        itemCount: _imgs.length,
        itemBuilder: (context, index) {
          return new Container(
            margin: new EdgeInsets.fromLTRB(0, 0, 0, 10),
            // width: 750,
            height: 120,
            child: new AspectRatio(
              aspectRatio: 2.8,
              child: new FittedBox(
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
                child: new Container(
                  child: new Image.asset(_imgs[index]),
                ),
              ),
            ),
          );
        },
      ),
    ),
  ),
);

final _imgs = [
  'images/timbg.png',
  'images/bpbg.jpg',
  'images/blue.png',
  'images/black.png',
  'images/like.png',
  'images/right.png',
];
