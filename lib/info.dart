import 'package:flutter/material.dart';
import './main.dart' as HomeUtama;
import 'home.dart';

void main() {
  runApp(Info());
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text(
          "Informasi",
        ),
      ),
      body: Center(
        child: Text("Coming Soon", style: TextStyle(fontSize: 30))),
    );
    }
}