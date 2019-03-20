import 'package:flutter/material.dart';

class MsgPage extends StatelessWidget {
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
          child: new ListView(
            // children: <Widget>[msg1, msg2, msg3, msg4, msg5],
            // children: msgItem,
          ),
        ),
      ),
    );
  }
}

class msg {
  String name;
  String value;

  msg(this.name, this.value) {
    if (name == null || value == null) {
      throw ArgumentError("Words of WordPair cannot be null. "
          "Received: '$name', '$value'");
    }
    if (name.isEmpty || value.isEmpty) {
      throw ArgumentError("Words of WordPair cannot be empty. "
          "Received: '$name', '$value'");
    }
  }
}

var msgData = [
  new msg('msg', '新消息1'),
  new msg('msg', '新消息2'),
  new msg('msg', '新消息3'),
];

final tiles = msgData.map((msg m) {
  var listTile = new ListTile(
    leading: new Icon(Icons.ac_unit),
    title: new Text(
      m.value,
      style: new TextStyle(fontSize: 20),
    ),
    trailing: new Icon(Icons.chevron_right),
    selected: true,
  );
  return listTile;
});

var msgItem = ListTile.divideTiles(
  // context: context,
  tiles: tiles,
).toList();
