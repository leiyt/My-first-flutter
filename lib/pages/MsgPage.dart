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
                title: new Text(_infotitle[index],
                    style: TextStyle(color: Colors.blueGrey,fontSize: 15)),
                subtitle:
                    new Text(_infoList[index], style: TextStyle(color: const Color(0xffd11f0e))),
                leading: new Icon(Icons.message, color: const Color(0xffd11f0e)),
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
  '新消息：今晚开会，任何人不得缺席，我官威很大，有的是办法整你',
  '广告消息：欢迎定够村村福利彩票，中奖信息实时推送',
  '新消息：今晚加班，任务很多，通宵也要干完',
  '在干嘛？',
  '请取快递！',
  '工作提醒！任务未完成，请及时处理！',
  '邮件提醒：你有新的工作任务提醒，请及时查看！',
  '老板的消息：进来办公室一下',
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

