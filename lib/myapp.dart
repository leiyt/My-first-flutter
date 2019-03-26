
import 'package:flutter/material.dart';

// 构建动态装置 MyListPage
class MyListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyListState();
  }
  
}
// 构建 MyListState
class MyListState extends State<MyListPage> {
  @override
  Widget build(BuildContext context){
    return materyPage;
  }
}

// 构建容器(Widget) MateryPage
Widget materyPage =new MaterialApp(
  title: '动态listView',
  home: new Scaffold(
    appBar: new AppBar(

    ),
    body: new Container(
      child: new ListView(
        children: <Widget>[

        ],
      ),
    ),
  ),
);
