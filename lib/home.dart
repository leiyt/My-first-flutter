import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:fluttertoast/fluttertoast.dart';

import 'pages/MsgPage.dart';
import 'pages/HomePage.dart';
import 'pages/ShopPage.dart';
import 'pages/MyPage.dart';
import 'pages/DrivePage.dart';
import 'package:startup_namer/list.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline: TextStyle(
          color: Colors.red,
          fontSize: 30.0,
        )),
        backgroundColor: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/list": (BuildContext context) => new RandomWords(context),
        "/home": (BuildContext context) => new HomePage(context),
        "/msg": (BuildContext context) => new MsgPage(context),
        "/shop": (BuildContext context) => new ShopPage(context),
        "/my": (BuildContext context) => new MyPage(context),
        "/drive": (BuildContext context) => new DidiSample(),
      },
      home: new MainPageWidget());
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '商铺', '消息', '我的'];

  /*
   * 根据image路径获取图片
   * 这个图片的路径需要在 pubspec.yaml 中去定义
   */
  Image getTabImage(path) {
    return new Image.asset(path, width: 20.0, height: 20.0);
  }

  /*
   * 根据索引获得对应的normal或是press的icon
   */
  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  /*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(color: const Color(0xffd11f0e)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(
            color: const Color(0xff333333),
            fontSize: 14,
          ));
    }
  }

  /*
   * 存储的四个页面，和Fragment一样
   */
  var _bodys;

  void initData() {
    /*
      bottom的按压图片
     */
    tabImages = [
      [
        getTabImage('images/home_gray.png'),
        getTabImage('images/home_red.png')
      ],
      [
        getTabImage('images/shopping_gray.png'),
        getTabImage('images/shopping_red.png')
      ],
      [
        getTabImage('images/msg_gray.png'),
        getTabImage('images/msg_red.png')
      ],
      [
        getTabImage('images/me_gray.png'),
        getTabImage('images/me_red.png')
      ]
    ];

    _bodys = [
      new HomePage(context),
      new ShopPage(context),
      new MsgPage(context),
      new MyPage(context)
    ];
  }

  @override
  Widget build(BuildContext context) {
    initData();
    return Scaffold(
      appBar: new AppBar(
        title: new Text("主页"),
        backgroundColor: Colors.black,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.widgets),
            onPressed: () {
              // Navigator.of(context).pushNamed("/list");/* 静态路由 */
              /* 动态路由，传递参数 */
              // Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => new RandomWords(context)));
              /* 动态路由，接收返回参数 */
              // String userName = "yinll";
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new RandomWords(context))).then((data){
                        var result =data;
                        print(result);
                        Fluttertoast.showToast(
                          msg: data,
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIos: 1,
                          backgroundColor: Colors.black,
                          textColor: Colors.white
                        );
              });
              

              // Navigator.push(
              //   context,
              //   new MaterialPageRoute(builder: (context) => new RandomWords(context))
              // );
            },
          ),
          new IconButton(
            icon: new Icon(Icons.perm_identity),
            onPressed: () {
              // Navigator.of(context).pushNamed("/home");
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MyPage(context)));
            },
          ),
          new IconButton(
            icon: new Icon(Icons.insert_comment),
            onPressed: () {
              
              // Navigator.of(context).pushNamed("/msg");
              Fluttertoast.showToast(
                msg: "点击图标弹出提示气泡",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIos: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white
              );
            },
          ),
          new IconButton(
            icon: new Icon(Icons.import_contacts),
            onPressed: () {
              Navigator.of(context).pushNamed("/myapp");
            },
          ),
          new IconButton(
            icon: new Icon(Icons.view_list),
            onPressed: () {
              Navigator.of(context).pushNamed("/drive");
            },
          ),
        ],
      ),
      body: _bodys[_tabIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: getTabIcon(0), title: getTabTitle(0)),
          new BottomNavigationBarItem(
              icon: getTabIcon(1), title: getTabTitle(1)),
          new BottomNavigationBarItem(
              icon: getTabIcon(2), title: getTabTitle(2)),
          new BottomNavigationBarItem(
              icon: getTabIcon(3), title: getTabTitle(3)),
        ],
        //设置显示的模式
        type: BottomNavigationBarType.fixed,
        //设置当前的索引
        currentIndex: _tabIndex,
        //tabBottom的点击监听
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}
