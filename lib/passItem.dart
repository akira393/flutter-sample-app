import 'package:flutter/material.dart';

class PassItem extends StatefulWidget {
  const PassItem({ Key? key }) : super(key: key);

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
    );
  }
}