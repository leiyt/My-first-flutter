import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  // Widget build(BuildContext context) {
  //   return new MaterialApp(
  //     title: 'Startup Name Generator',
  //     home: new RandomWords(),
  //   );
  // }

  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    return new MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("My first flutter app"),
            ),
            body: new Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                color: const Color(0xfff0f0f0),
                width: 750,
                height: 750,
                // child: new Text('我是container的内容'),
                // child: new Text(wordPair.asPascalCase),
                child: new RandomWords(),
              ),
            )));
  }
}

class RandomWords extends StatefulWidget {
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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My first flutter app"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
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
    Navigator.of(context).push(new MaterialPageRoute(//创建一个装置，循环渲染_saved里面的单词
        builder: (context) {
      final tiles = _saved.map((pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      });
      final divided = ListTile.divideTiles(
        context: context,
        tiles: tiles,
      ).toList();

      //创建一个Scaffold
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('我收藏的单词'),
        ),
        body: new ListView(children: divided),
      );
    }));
  }
}
