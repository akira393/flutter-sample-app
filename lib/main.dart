import 'package:flutter/material.dart';
import 'package:flutter_application_1/passItem.dart';

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
  List<String> titleList=["yahool","amazon","楽天"];

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
      body:ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (BuildContext context, int i){
          return Column(
            children: [
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PassItem(titleList[i])));
                },
                leading: Icon(Icons.vpn_key),
                title: Text(titleList[i]),
              ),
              Divider()
            ],
          );
        }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          titleList.add("google");
          //buildメソッドをサイレンダーする関数？
          setState(() {
            
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}