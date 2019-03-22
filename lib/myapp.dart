// import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'home.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _ipAddress = 'Unknown';

  _getIPAddress() async {
    var url = 'https://httpbin.org/ip';
    var httpClient = new HttpClient();

    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.OK) {
        // var json = await response.transform(UTF8.decoder).join();
        // var data = JSON.decode(json);
        // result = data['origin'];
      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }

    // If the widget was removed from the tree while the message was in flight,
    // we want to discard the reply rather than calling setState to update our
    // non-existent appearance.
    if (!mounted) return;

    setState(() {
      _ipAddress = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    var spacer = new SizedBox(height: 32.0);

    return new MaterialApp(
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => new MainPage(),
      },
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('嗯嗯呢'),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.home),
              onPressed: (){
                Navigator.of(context).pushNamed('/home');
              },
            )
          ],
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Your current IP address is:'),
              new Text('$_ipAddress.'),
              spacer,
              new RaisedButton(
                onPressed: _getIPAddress,
                child: new Text('Get IP address'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}