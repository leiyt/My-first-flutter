import 'package:flutter/material.dart';

/*- 第三个页面 -*/
class ThirdPage extends StatefulWidget {
  final String title;
  ThirdPage({this.title});

  @override
  State<StatefulWidget> createState() {
    return new _ThirdPageState();
  }
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController controller;

  @override
  void initState() {
    controller = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            child: new Row(
              children: <Widget>[
                new Icon(Icons.add_circle),
                new Text('这是第三个页面')
              ],
            ),
          ),
          new TextField(
            decoration: new InputDecoration(labelText: "请输入昵称"),
            controller: controller,
          ),
          new RaisedButton(
              color: Colors.blueAccent,
              onPressed: () {
                if (controller.text == '') {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => new AlertDialog(
                            title: new Text("请输入昵称"),
                          ));
                  return;
                }
                Navigator.pop(context, controller.text);
              },
              child: new Text("OK"))
        ],
      ),
    );
  }
}
/* --------------------------------------------- */
