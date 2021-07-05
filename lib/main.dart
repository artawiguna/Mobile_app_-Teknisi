import 'dart:io';

import 'package:flutter/material.dart';
import './home.dart' as home;
import './order.dart' as order;
import './konsultasi.dart' as konsul;
import './info.dart' as info;
import './chat.dart' as chat;
import './akun.dart' as akun;
import 'Transaksi.dart' as transaksi;

void main() {
  runApp(new MaterialApp(
    title: "OTC",
    home: new Halsatu(),
  ));
}
class Halsatu extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Halsatu> with SingleTickerProviderStateMixin {
  TabController controller;
  int bottomNavigationBarIndex =0;

  final _widgetOptions = [
    home.Home(),
    transaksi.Transaksi(),
    chat.Chat(),
    akun.Akun(),
  ];
  //@override
 // void initState() {
 //   controller = new TabController(vsync: this, length: 4);
 //   super.initState();
  //}

 // @override
//  void dispose() {
 //   controller.dispose();
 //   super.dispose();
//  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: Icon(Icons.home),
        title: new Text("Home"),
      ),
      body:  _widgetOptions.elementAt(bottomNavigationBarIndex),

     bottomNavigationBar: BottomNavigationBar(
       
       items: [
         BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
        backgroundColor: Colors.blue
         ),
         BottomNavigationBarItem(
        icon: Icon(Icons.compare_arrows),
        title: Text('Transaction'),
        backgroundColor: Colors.blue
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        title: Text('Chat'),
        backgroundColor: Colors.blue
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('Profile'),
        backgroundColor: Colors.blue
      ),
       ],
       type: BottomNavigationBarType.fixed,
          currentIndex: bottomNavigationBarIndex,
          fixedColor: Colors.blueAccent,
          onTap: _onItemTapped,
       )
    );
  }
   void _onItemTapped(int index) {
    setState(() {
      bottomNavigationBarIndex = index;
    });
  }
}

