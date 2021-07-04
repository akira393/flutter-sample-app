import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'パスワードPOSTアプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'パスワードPOSTアプリ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 500;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text("amazon"),
          ),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text("楽天"),
          ),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text("yahool"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//todo リスト間に区切りを表示
//todo リスト表示を動的に
//todo フロートアクションボタンをタップ時に、リストを一つ追加表示
//todo 新しい画面を作成し、リストをタップした時に遷移
//todo 新しい画面のレイアウト作成
//todo 新しい画面にリストからデータを引き継ぐ