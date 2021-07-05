import 'package:flutter/material.dart';
import './main.dart' as HomeUtama;

void main() {
  runApp(Akun());
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text(
          "Akun",
        ),
      ),
      body: new Text("sedang dalam proses pengembangn"),
    );

  }
}
