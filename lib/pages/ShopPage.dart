import 'package:flutter/material.dart';


class ShopPage extends StatefulWidget {
  final parentContext;
  ShopPage(this.parentContext);
  @override
  State<StatefulWidget> createState() {
    return new ShopState();
  }
}

class ShopState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new Text('shop'),
        ),
      ),
    );
  }
}


Widget scaffoldBox = new Scaffold(
  body: new ListView(
    children: <Widget>[
      new Row(
        children: <Widget>[
          new Expanded(
            child: new Container(
                child: new Container(
                  color: Colors.black,
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        decoration: BoxDecoration(
                          border: new Border.all(width: 4, color: Colors.black),
                        ),
                        width: 200,
                        child: new FittedBox(
                          fit: BoxFit.fitWidth,
                          child: new Image.asset('images/bluebg.jpg'),
                        ),
                      ),
                      new Text(
                        '这是一张很好看的图片',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                      new Row(
                        children: <Widget>[
                          new Container(
                            margin: new EdgeInsets.fromLTRB(10, 5, 20, 5),
                            child: new Text(
                              '价格：￥168:00',
                              style: TextStyle(fontSize: 15, color: Colors.red),
                            ),
                          ),
                          new Icon(
                            Icons.shopping_cart,
                            size: 16,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                padding: new EdgeInsets.all(10)),
          ),
          new Expanded(
            child: new Container(
                // color: Colors.green,
                child: new Container(
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        decoration: BoxDecoration(
                          border: new Border.all(width: 4, color: Colors.white),
                        ),
                        width: 200,
                        child: new FittedBox(
                          fit: BoxFit.fitWidth,
                          child: new Image.asset('images/black.jpg'),
                        ),
                      ),
                      new Text(
                        '这是一张很好看的图片',
                        style: TextStyle(fontSize: 13),
                      ),
                      new Row(
                        children: <Widget>[
                          new Container(
                            margin: new EdgeInsets.fromLTRB(10, 5, 20, 5),
                            child: new Text(
                              '价格：￥168:00',
                              style: TextStyle(fontSize: 15, color: Colors.red),
                            ),
                          ),
                          new Icon(
                            Icons.shopping_cart,
                            size: 16,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                padding: new EdgeInsets.all(10)),
          )
        ],
      ),
    ],
  ),
);
// var listWarp = new Wrap(
//   spacing: 8.0, // gap between adjacent chips
//   runSpacing: 4.0, // gap between lines
//   children: <Widget>[
//     Chip(
//       avatar: CircleAvatar(
//           backgroundColor: Colors.blue.shade900, child: Text('AH')),
//       label: Text('Hamilton'),
//     ),
//     Chip(
//       avatar: CircleAvatar(
//           backgroundColor: Colors.blue.shade900, child: Text('ML')),
//       label: Text('Lafayette'),
//     ),
//     Chip(
//       avatar: CircleAvatar(
//           backgroundColor: Colors.blue.shade900, child: Text('HM')),
//       label: Text('Mulligan'),
//     ),
//     Chip(
//       avatar: CircleAvatar(
//           backgroundColor: Colors.blue.shade900, child: Text('JL')),
//       label: Text('Laurens'),
//     ),
//     Chip(
//       avatar: CircleAvatar(
//           backgroundColor: Colors.blue.shade900, child: Text('AH')),
//       label: Text('Hamilton'),
//     ),
//     Chip(
//       avatar: CircleAvatar(
//           backgroundColor: Colors.blue.shade900, child: Text('ML')),
//       label: Text('Lafayette'),
//     ),
//     Chip(
//       avatar: CircleAvatar(
//           backgroundColor: Colors.blue.shade900, child: Text('HM')),
//       label: Text('Mulligan'),
//     ),
//     Chip(
//       avatar: CircleAvatar(
//           backgroundColor: Colors.blue.shade900, child: Text('JL')),
//       label: Text('Laurens'),
//     ),
//   ],
// );
