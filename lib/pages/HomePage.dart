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
        body: new Container(
          // padding: new EdgeInsets.all(15),
          child: new ListView(
            padding: const EdgeInsets.all(15.0),
            children: <Widget>[
              new Text('图片列表',textAlign: TextAlign.center,style:TextStyle(fontSize: 20)),
              new Container(
                margin: new EdgeInsets.fromLTRB(0,10,0,10),
                width: 750,
                height: 120,
                child: new AspectRatio(
                  aspectRatio: 1.5,
                  child: new Container(
                    color: Colors.blueGrey,
                  ),
                ),
                // child: new FittedBox(
                //   fit: BoxFit.fitWidth,
                //   alignment: Alignment.center,
                //   child: new Container(
                //     color: Colors.blueGrey,
                //     child: new Image.asset('images/bpbg.jpg'),
                //   ),
                // ),
              ),
              new Container(
                margin: new EdgeInsets.fromLTRB(0,10,0,10),
                width: 750,
                height: 120,
                child: new FittedBox(
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                  child: new Container(
                    color: Colors.blueGrey,
                    child: new Image.asset('images/timbg.jpg'),
                  ),
                ),
              ),
              new Container(
                margin: new EdgeInsets.fromLTRB(0,10,0,10),
                width: 750,
                height: 120,
                child: new FittedBox(
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                  child: new Container(
                    color: Colors.blueGrey,
                    child: new Image.asset('images/bluebg.jpg'),
                  ),
                ),
              ),
              new Container(
                margin: new EdgeInsets.fromLTRB(0,10,0,10),
                width: 750,
                height: 120,
                child: new FittedBox(
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                  child: new Container(
                    color: Colors.blueGrey,
                    child: new Image.asset('images/black.jpg'),
                  ),
                ),
              ), 
              new Container(
                margin: new EdgeInsets.fromLTRB(0,10,0,10),
                width: 750,
                height: 120,
                child: new FittedBox(
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                  child: new Container(
                    color: Colors.blueGrey,
                    child: new Image.asset('images/bpbg.jpg'),
                  ),
                ),
              ),            
              new Container(
                margin: new EdgeInsets.fromLTRB(0,10,0,10),
                width: 750,
                height: 120,
                child: new FittedBox(
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                  child: new Container(
                    color: Colors.blueGrey,
                    child: new Image.asset('images/timbg.jpg'),
                  ),
                ),
              ),
            ],
          ),
          // child:new Text("首页")
        ),
      ),
    );
  }
}
