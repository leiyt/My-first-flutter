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
          child: new ListView.builder(
            padding: new EdgeInsets.all(5.0),
            itemExtent: 50.0,
            itemBuilder: (BuildContext context, int index) {
              return new Row(
                children: <Widget>[
                  new Icon(Icons.arrow_forward,color: Colors.blueGrey,),
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.fromLTRB(10, 0, 10, 0),
                      decoration: BoxDecoration(
                        border: new Border.all(width: 1,color: Colors.blueGrey)
                      ),
                      child: new Text("你收到一条新消息，请查看！ $index"),
                    ),
                  ),
                  new Icon(Icons.audiotrack,color: Colors.blueGrey)
                ],
              );
            },
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



List<Widget> _list = new List();



// Widget buildListData(context, strItem, iconItem) {
//   for (int i = 0; i < strItems.length; i++) => _list.add(buildListData(context, strItems[i], iconItems[i]));
// }
// 添加分割线
// var divideList = ListTile.divideTiles(context: context, tiles: _list).toList();
// body: new Scrollbar(
//     child: new ListView(
//         // 添加ListView控件
// //        children: _list,    // 无分割线
//         children: divideList, // 添加分割线
//     ),
// );