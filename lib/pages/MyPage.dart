import 'package:flutter/material.dart';
import 'package:startup_namer/list.dart';

class MyPage extends StatelessWidget {
  final parentContext;
  MyPage(this.parentContext);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: new MyPage(parentContext),
      routes: <String,WidgetBuilder>{
        "/list":(BuildContext context)=>new RandomWords(),
      },
      // home: new Scaffold(
      //   body: new Center(child:new Text("个人中心")),
      // ),
    );
  }
}

class PageWidget extends StatefulWidget {
  final parentContext;

  PageWidget(this.parentContext);
  @override
  State<StatefulWidget> createState() {
    return new PageState();
  }
}

class PageState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       body: new Center(child: new RaisedButton(onPressed: _pushPage,child: new Text("跳转"),),),
    );
  }
  _pushPage(){
   Navigator.of(widget.parentContext).pushNamed("/list");

    // Navigator.of(widget.parentContext).push(new MaterialPageRoute(builder: (context) {
    //   return new RandomWords();
    // },));
  }
}


