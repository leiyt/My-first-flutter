import 'package:flutter/material.dart';

class MsgPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return new MsgPageState();
  }
}

class MsgPageState extends State<MsgPage> {
  @override
  Widget build(BuildContext context) {
    return materialMsg;
  }
}

Widget materialMsg = new MaterialApp(
  title: 'Flutter Demo',
  theme: new ThemeData(
    primarySwatch: Colors.brown,
  ),
  debugShowCheckedModeBanner: false,
  home: new Scaffold(
    body: new Container(
      margin: new EdgeInsets.symmetric(vertical: 20),
      child: new ListView(
        children: <Widget>[cardList],
      ),
    ),
  ),
);

Widget cardList = new Column(
// var cardList = new Column(
  children: <Widget>[
    new Card(
      // color: Colors.blueGrey,
      child: new Column(children: <Widget>[
        new ListTile(
          title: new Text('你有一条新消息',
              style: TextStyle(color: Colors.blueGrey, fontSize: 20)),
          subtitle: new Text('新消息1', style: TextStyle(color: Colors.blueGrey)),
          leading: new Icon(Icons.message, color: Colors.blueGrey),
        ),
        new Divider(),
        new Container(
          padding: new EdgeInsets.all(16),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('来自某某的消息'),
              ),
              new Icon(Icons.people)
            ],
          ),
        )
      ]),
    ),
    new Card(
      child: new Column(children: <Widget>[
        new ListTile(
          title: new Text('你有一条新消息',
              style: TextStyle(color: Colors.blueGrey, fontSize: 20)),
          subtitle: new Text('新消息2', style: TextStyle(color: Colors.blueGrey)),
          leading: new Icon(Icons.message, color: Colors.blueGrey),
        ),
        new Divider(),
        new Container(
          padding: new EdgeInsets.all(16),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('来自某某的消息'),
              ),
              new Icon(Icons.people)
            ],
          ),
        )
      ]),
    ),
    new Card(
      child: new Column(children: <Widget>[
        new ListTile(
          title: new Text('你有一条新消息',
              style: TextStyle(color: Colors.blueGrey, fontSize: 20)),
          subtitle: new Text('新消息3'),
          leading: new Icon(Icons.message, color: Colors.blueGrey),
        ),
        new Divider(),
        new Container(
          padding: new EdgeInsets.all(16),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('来自某某的消息'),
              ),
              new Icon(Icons.people)
            ],
          ),
        )
      ]),
    ),
    new Card(
      child: new Column(children: <Widget>[
        new ListTile(
          title: new Text('你有一条新消息',
              style: TextStyle(color: Colors.blueGrey, fontSize: 20)),
          subtitle: new Text('新消息4', style: TextStyle(color: Colors.blueGrey)),
          leading: new Icon(Icons.message, color: Colors.blueGrey),
        ),
        new Divider(),
        new Container(
          padding: new EdgeInsets.all(16),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('来自某某的消息'),
              ),
              new Icon(Icons.people)
            ],
          ),
        )
      ]),
    ),
    new Card(
      child: new Column(children: <Widget>[
        new ListTile(
          title: new Text('你有一条新消息',
              style: TextStyle(color: Colors.blueGrey, fontSize: 20)),
          subtitle: new Text('新消息5'),
          leading: new Icon(Icons.message, color: Colors.blueGrey),
        ),
        new Divider(),
        new Container(
          padding: new EdgeInsets.all(16),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('来自某某的消息'),
              ),
              new Icon(Icons.people)
            ],
          ),
        )
      ]),
    ),
    new Card(
      child: new Column(children: <Widget>[
        new ListTile(
          title: new Text('你有一条新消息',
              style: TextStyle(color: Colors.blueGrey, fontSize: 20)),
          subtitle: new Text('新消息6'),
          leading: new Icon(Icons.message, color: Colors.blueGrey),
        ),
        new Divider(),
        new Container(
          padding: new EdgeInsets.all(16),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('来自某某的消息'),
              ),
              new Icon(Icons.people)
            ],
          ),
        )
      ]),
    ),
    new Card(
      child: new Column(children: <Widget>[
        new ListTile(
          title: new Text('你有一条新消息',
              style: TextStyle(color: Colors.blueGrey, fontSize: 20)),
          subtitle: new Text('新消息7', style: TextStyle(color: Colors.blueGrey)),
          leading: new Icon(Icons.message, color: Colors.blueGrey),
        ),
        new Divider(),
        new Container(
          padding: new EdgeInsets.all(16),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('来自某某的消息'),
              ),
              new Icon(Icons.people)
            ],
          ),
        )
      ]),
    ),
  ],
);

class Msg {
  String name;
  String value;

  Msg(this.name, this.value) {
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
  new Msg('msg', '新消息1'),
  new Msg('msg', '新消息2'),
  new Msg('msg', '新消息3'),
];

final tiles = msgData.map((Msg m) {
  var listTile = new ListTile(
    leading: new Icon(Icons.accessibility, color: Colors.blueGrey), // item 前置图标
    title: new Text(m.value, style: TextStyle(fontSize: 20)), // item 标题
    subtitle: new Text('subtitle'), // item 副标题
    trailing: new Icon(Icons.adb, color: Colors.blueGrey), // item 后置图标
    isThreeLine: false, // item 是否三行显示
    dense: new bool.fromEnvironment('name'), // item 直观感受是整体大小
    contentPadding: new EdgeInsets.all(15), // item 内容内边距
    enabled: true,
    onTap: () {
      print('点击了');
    }, // item onTap 点击事件
    onLongPress: () {
      print('长按');
    }, // item onLongPress 长按事件
    selected: false, // item 是否选中状态
  );
  return listTile;
});

// const ListTile({
//     Key key,
//     this.leading,              // item 前置图标
//     this.title,                // item 标题
//     this.subtitle,             // item 副标题
//     this.trailing,             // item 后置图标
//     this.isThreeLine = false,  // item 是否三行显示
//     this.dense,                // item 直观感受是整体大小
//     this.contentPadding,       // item 内容内边距
//     this.enabled = true,
//     this.onTap,                // item onTap 点击事件
//     this.onLongPress,          // item onLongPress 长按事件
//     this.selected = false,     // item 是否选中状态
// });

List<String> strItems = <String>[
  '图标 -> keyboard',
  '图标 -> print',
  '图标 -> router',
  '图标 -> pages',
  '图标 -> zoom_out_map',
  '图标 -> zoom_out',
  '图标 -> youtube_searched_for',
  '图标 -> wifi_tethering',
  '图标 -> wifi_lock',
  '图标 -> widgets',
  '图标 -> weekend',
  '图标 -> web',
  '图标 -> accessible',
  '图标 -> ac_unit',
];

List<Icon> iconItems = <Icon>[
  new Icon(Icons.keyboard),
  new Icon(Icons.print),
  new Icon(Icons.router),
  new Icon(Icons.pages),
  new Icon(Icons.zoom_out_map),
  new Icon(Icons.zoom_out),
  new Icon(Icons.youtube_searched_for),
  new Icon(Icons.wifi_tethering),
  new Icon(Icons.wifi_lock),
  new Icon(Icons.widgets),
  new Icon(Icons.weekend),
  new Icon(Icons.web),
  new Icon(Icons.accessible),
  new Icon(Icons.ac_unit),
];

Widget buildListData(BuildContext context, String strItem, Icon iconItem) {
  return new ListTile(
    isThreeLine: false,
    leading: iconItem,
    title: new Text(strItem),
    trailing: new Icon(Icons.keyboard_arrow_right),
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text(
              'ListViewDemo',
              style: new TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            ),
            content: new Text('您选择的item内容为:$strItem'),
          );
        },
      );
    },
  );
}
