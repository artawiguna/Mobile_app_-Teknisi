import 'package:flutter/material.dart';
import 'package:projectuas/info.dart';
import 'order.dart' as order;
import 'order1.dart' as order1;
import 'konsultasi.dart' as konsultasi;
import 'info.dart' as info;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Image.asset(
            "images/home.jpg",
            height: 250,
          ),
          new CardSaya(
            icon: Icons.event_available,
            teks: "Order",
            warnaIcon: Colors.blue[300],
            halberikut: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => order.Order()));
            },
          ),
          new CardSaya(
            icon: Icons.group,
            teks: "Konsultasi",
            warnaIcon: Colors.blue[300],
            halberikut: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => konsultasi.Konsultasi()));
            },
          ),
          new CardSaya(
            icon: Icons.info_outline,
            teks: "Informasi",
            warnaIcon: Colors.blue[300],
            halberikut: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => info.Info()));
            },
          ),
        ],
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  CardSaya({this.icon, this.teks, this.warnaIcon, this.halberikut});
  final IconData icon;
  final String teks;
  final Color warnaIcon;
  final Function halberikut;

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new RaisedButton(
              onPressed: halberikut,
              child: new Column(children: <Widget>[
                new Icon(
                  icon,
                  size: 50.0,
                  color: warnaIcon,
                ),
                new Text(
                  teks,
                  style: new TextStyle(fontSize: 20.0),
                )
              ])),
        ));
  }
}
