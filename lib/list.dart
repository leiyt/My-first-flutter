import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'pages/HomePage.dart';


class RandomWords extends StatefulWidget {
  final parentContext;
  RandomWords(this.parentContext);
  
  @override  
  State<StatefulWidget> createState() {
    // RandomWords方法去调用RandomWordsState方法
    return new RandomWordsState();
  }
}

class RandomWordsState extends State {
  @override
  //创建数组_suggestions
  final _suggestions = <WordPair>[];
  //创建一个样式变量
  final _biggerFont = const TextStyle(fontSize: 18.0);
  //创建一个变量用来保存收藏的单词
  final _saved = new Set<WordPair>();

  Widget build(BuildContext context) {
    // RandomWordsState方法的实现==》随机生成个一个单词
    // final wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("words list"),
          leading: new IconButton(icon: new Icon(Icons.arrow_back), onPressed: _toHome),
          backgroundColor: Colors.brown,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.import_contacts), onPressed: _pushSaved),
            new IconButton(icon: new Icon(Icons.home), onPressed: _toHome),
            new IconButton(icon: new Icon(Icons.settings), onPressed: _setting),
          ],
        ),
        body: _buildSuggestions(),
      ),
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => new HomePage(context),
      }
    );
    
    // return new Scaffold(
    //   appBar: new AppBar(
    //     title: new Text("words list"),
    //     backgroundColor: Colors.blueGrey,
    //     actions: <Widget>[
    //       new IconButton(
    //           icon: new Icon(Icons.import_contacts), onPressed: _pushSaved),
    //       new IconButton(icon: new Icon(Icons.home), onPressed: _toHome),
    //       new IconButton(icon: new Icon(Icons.settings), onPressed: _setting),
    //     ],
    //   ),
    //   body: _buildSuggestions(),
    // );
  }
  void _toHome() {
    // Navigator.of(context).pushNamed('/home');
    var params = "这是list页面返回的参数";
    Navigator.of(context).pop(params);
    print('返回');
    // Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    //   return new MainPage(title: '路由是个好东西，要进一步封装');
    // }));
  }

  void _setting() {
    print('去设置页面');
  }
  
  //循环处理数据_suggestions并循环调用_buildRow渲染
  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(15),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    //创建一个变量标记是否收藏单词
    final alreadySaved = _saved.contains(pair);
    var listTile = new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
    return listTile;
  }

  //添加导航方法
  void _pushSaved() {
    var materialPageRoute = new MaterialPageRoute(//创建一个路由装置，循环渲染_saved里面的单词
        builder: (context) {
      final tiles = _saved.map((pair) {
        var listTile = new ListTile(
          leading: new Icon(Icons.ac_unit),
          title: new Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
          trailing: new Icon(Icons.chevron_right),
          // selected: true,
          onTap: () {
            //点击单词跳转页面，页面内容为 MaterialPageRoute 的内容
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return new Scaffold(
                appBar: new AppBar(
                  backgroundColor: Colors.blueGrey,
                  title: new Text("点击的单词"),
                ),
                body: new Container(
                  padding: const EdgeInsets.all(10),
                  child: new Container(
                      padding: new EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        border: new Border.all(width:2,color:Colors.blueGrey)
                      ),
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                            child: new Text('你点击的单词是： '+pair.asPascalCase,style: TextStyle(fontSize: 16,color: Colors.blueGrey),),                          ),
                          new Icon(Icons.add_shopping_cart,color: Colors.blueGrey),
                        ],
                      ),
                     
                  ),
                ),
              );
            }));
          },
        );
        return listTile;
      });
      final divided = ListTile.divideTiles(
        context: context,
        tiles: tiles,
      ).toList();

      //创建一个Scaffold容器
      return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blueGrey,
          title: new Text('我收藏的单词'),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.filter_vintage),
                tooltip: 'vintage',
                onPressed: toNewPage),
          ],
        ),
        body: new ListView(children: divided),
      );
    });
    Navigator.of(context).push(materialPageRoute);
  }
  void toNewPage() {
      // Navigator.of(context).push(materialPageRoute2);
  }
}


