import 'package:flutter/material.dart';
import 'package:startup_namer/list.dart';

/* 动态装置StatefulWidget--MyPage */
class MyPage extends StatefulWidget {
  final parentContext;
  MyPage(this.parentContext);

  State<StatefulWidget> createState() {
    return new MyPageState();
  }
}

class MyPageState extends State<MyPage> {
  var check = false;
  bool isCheck = false;
  List<bool> isChecks = [false, false];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '个人中心',
      theme: new ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      // home: new MyPage(parentContext),
      routes: <String, WidgetBuilder>{
        "/list": (BuildContext context) => new RandomWords(context),
      },
      home: new Scaffold(
        body: new Center(
          child: new GridView.count(
            padding: new EdgeInsets.all(10),
            primary: false,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              new Container(
                color: Colors.blueAccent,
                padding: new EdgeInsets.all(10),
                margin: new EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: new Text('Grides Item',style: TextStyle(color:Colors.white)),
              ),
              new Container(
                color: Colors.red,
                padding: new EdgeInsets.all(10),
                margin: new EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: new Text('Grides Item',style: TextStyle(color:Colors.white)),
              ),
              new Container(
                color: Colors.yellow,
                padding: new EdgeInsets.all(10),
                margin: new EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: new Text('Grides Item',style: TextStyle(color:Colors.white)),
              ),
              new Container(
                color: Colors.black,
                padding: new EdgeInsets.all(10),
                margin: new EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: new Text('Grides Item',style: TextStyle(color:Colors.white)),
              ),
              new Container(
                color: Colors.green,
                padding: new EdgeInsets.all(10),
                margin: new EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: new Text('Grides Item',style: TextStyle(color:Colors.white)),
              ),
              new Container(
                color: Colors.blueAccent,
                padding: new EdgeInsets.all(10),
                margin: new EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: new Text('Grides Item',style: TextStyle(color:Colors.white)),
              ),
              new Container(
                color: Colors.brown,
                padding: new EdgeInsets.all(10),
                margin: new EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: new Text('Grides Item',style: TextStyle(color:Colors.white)),
              ),
              new Container(
                color: Colors.redAccent,
                padding: new EdgeInsets.all(10),
                margin: new EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: new Text('Grides Item',style: TextStyle(color:Colors.white)),
              ),
              new Container(
                color: Colors.black45,
                padding: new EdgeInsets.all(10),
                margin: new EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: new Text('Grides Item',style: TextStyle(color:Colors.white)),
              ),
              new Container(
                color: Colors.green,
                padding: new EdgeInsets.all(10),
                margin: new EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: new Text('Grides Item',style: TextStyle(color:Colors.white)),
              ),
            ],
          )
        ),
      ),
    );
  }
}
