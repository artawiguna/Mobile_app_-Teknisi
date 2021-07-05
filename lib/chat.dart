import 'package:flutter/material.dart';
import './main.dart' as HomeUtama;

void main() {
  runApp(Chat());
}

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text(
          "Chat",
        ),
      ),
       body: new Text("sedang dalam proses pengembangn"),
    );

  }
}
