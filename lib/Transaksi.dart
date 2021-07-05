import 'package:flutter/material.dart';
import './main.dart' as HomeUtama;
import 'home.dart';

void main() {
  runApp(Transaksi());
}

class Transaksi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text(
          "Transaksi",
        ),
      ),
      body: Center(
        child:
        new Text("Belum ada transaksi hari ini", style: TextStyle( fontSize : 20,)),)
    );
    }
}