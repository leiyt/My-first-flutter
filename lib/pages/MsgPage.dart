import 'package:flutter/material.dart';

class MsgPage extends StatefulWidget {
  final parentContext;
  MsgPage(this.parentContext);

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
      child: new ListView.builder(
        itemCount: _infoList.length,
        itemBuilder: (context, index) {
          return new Card(
            child: new Column(children: <Widget>[
              new ListTile(
                title: new Text(_infoList[index],
                    style: TextStyle(color: const Color(0xffd11f0e),fontSize: 18)),
                subtitle:
                    new Text(_infotitle[index], style: TextStyle(color: Colors.blueGrey)),
                leading: new Icon(Icons.message, color: Colors.green),
              ),
              new Divider(),
            ]),
          );
        },
      ),      
    ),
  ),
);

var _infoList = [
  '这是一条新消息',
  '新消息：今晚开会',
  '这是一条新消息',
  '新消息：今晚加班',
  '在干嘛？',
  '请取快递！',
  '工作提醒！',
  '邮件提醒',
  '老板的消息',
  '这个今天必须做完',
];
var _infotitle = [
  '新消息',
  '新消息',
  '新消息',
  '工作提醒',
  '私人消息',
  '快递消息',
  '工作提醒',
  '邮件提醒',
  '老板的消息',
  '私人消息'
];

