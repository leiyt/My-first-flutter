import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Center(
            // child:new Text("商店")
            child: listWrap),
      ),
    );
  }
}

var listWrap = new Wrap(
  spacing: 8.0, // gap between adjacent chips
  runSpacing: 4.0, // gap between lines
  children: <Widget>[
    Chip(
      avatar: CircleAvatar(
          backgroundColor: Colors.blue.shade900, child: Text('AH')),
      label: Text('Hamilton'),
    ),
    Chip(
      avatar: CircleAvatar(
          backgroundColor: Colors.blue.shade900, child: Text('ML')),
      label: Text('Lafayette'),
    ),
    Chip(
      avatar: CircleAvatar(
          backgroundColor: Colors.blue.shade900, child: Text('HM')),
      label: Text('Mulligan'),
    ),
    Chip(
      avatar: CircleAvatar(
          backgroundColor: Colors.blue.shade900, child: Text('JL')),
      label: Text('Laurens'),
    ),
    Chip(
      avatar: CircleAvatar(
          backgroundColor: Colors.blue.shade900, child: Text('AH')),
      label: Text('Hamilton'),
    ),
    Chip(
      avatar: CircleAvatar(
          backgroundColor: Colors.blue.shade900, child: Text('ML')),
      label: Text('Lafayette'),
    ),
    Chip(
      avatar: CircleAvatar(
          backgroundColor: Colors.blue.shade900, child: Text('HM')),
      label: Text('Mulligan'),
    ),
    Chip(
      avatar: CircleAvatar(
          backgroundColor: Colors.blue.shade900, child: Text('JL')),
      label: Text('Laurens'),
    ),
  ],
);
