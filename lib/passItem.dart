import 'package:flutter/material.dart';

class PassItem extends StatefulWidget {
  const PassItem({Key? key}) : super(key: key);

  @override
  _PassItemState createState() => _PassItemState();
}

class _PassItemState extends State<PassItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("詳細"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    child: Text("id"),
                  ),
                  Container(
                    width: 20,
                    child: Text(":"),
                  ),
                  Text("毎回同じIDを表示")
                ],
              ),
              Padding(padding: EdgeInsets.all(15)),
              Row(
                children: [
                  Container(
                    width: 50,
                    child: Text("PW"),
                  ),
                  Container(
                    width: 20,
                    child: Text(":"),
                  ),
                  Text("毎回同じパスワードを表示")
                ],
              )
            ],
          )),
    );
  }
}