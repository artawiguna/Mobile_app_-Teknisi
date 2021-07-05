import 'package:flutter/material.dart';
import './main.dart' as HomeUtama;
import 'teknisi_datang.dart' as teknisidatang;
import 'package:flutter/scheduler.dart' show timeDilation;

void main() {
  runApp(Order());
}

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text(
          "Order",
        ),
      ),
      body: new Container(
        
        padding: EdgeInsets.all(20.0),
        child: Column(
         //child: new _MyStatefulWidgetState(
           // teks: "komputer mati"
          //),
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Masukkan Permaslahan'
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Masukkan Lokasi'
              ),
            ),
            RaisedButton(
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>teknisidatang.TeknisiDatang()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

//class Cardorder extends StatelessWidget {
  //Cardorder({this.teks, });
  /*final TextField teks;

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
              child: new Column(children: <Widget>[

                new Text(
                  teks,
                  style: new TextStyle(fontSize: 20.0),
                )
              ]),
        ));
  }
}*/
