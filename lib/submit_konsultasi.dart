import 'package:flutter/material.dart';
import './main.dart' as HomeUtama;
import 'home.dart';

void main() {
  runApp(Submit_konsultasi());
}

class Submit_konsultasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text(
          "Forum",
        ),
      ),
      body: Container(
        padding: new EdgeInsets.all(25.0),
        child: new Center(
        child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Image.asset(
            "images/system.jpg" ,
            height: 250,
          ),
          new Text("Mohon Tunggu permasalahan masih di proses" )
        ]),
    )));
    }
}