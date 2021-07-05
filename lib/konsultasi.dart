import 'package:flutter/material.dart';
import './main.dart' as HomeUtama;
import 'submit_konsultasi.dart' as submit_konsultasi;

void main() {
  runApp(Konsultasi());
}

class Konsultasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text(
          "Konsultasi",
        ),
      ),
      body: Container(
        padding: new EdgeInsets.all(25.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Text("Masukkan Permaslahan", style: TextStyle(fontSize:20),),
            new Card(
              child: new Column(
                children :<Widget>[
                  Center(
                    child:
                  TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Input'
              ),
            ),
                  )

                ]
              ),
            ),
            RaisedButton(
              child: Text(
                "Sent",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>submit_konsultasi.Submit_konsultasi()));
              },
            ),
          ]),
      ),
    );
    
    
  }
}
