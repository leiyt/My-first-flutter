import 'package:flutter/material.dart';
import 'package:startup_namer/home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return new Scaffold(
    //   appBar:new AppBar(
    //     title: new Text('Home'),
    //     actions: <Widget>[
    //       new IconButton(
    //         icon: new Icon(Icons.home),
    //         onPressed: (){
    //           Navigator.of(context).push(
    //             new MaterialPageRoute(builder: (context) {
    //               return new Scaffold( body: new MainPage(),);
    //             })
    //            );
    //         },
    //       )
    //     ],
    //   ),
    //   body: new Center(
    //     child: new Text('首页'),
    //   ),
    // )
    return new MaterialApp(
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder>{
        "/main": (BuildContext context) => new MainPage(),
      },
      theme: new ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Center(
          child:new Text("首页")
          
        ),
      ),
    );
  }
}
