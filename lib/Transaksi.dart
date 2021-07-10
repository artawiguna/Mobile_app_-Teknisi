import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './main.dart' as HomeUtama;
import 'home.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(Transaksi());
}

class Transaksi extends StatefulWidget {
  const Transaksi({ Key key }) : super(key: key);

  @override
  _TransaksiState createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference order = firestore.collection("order");
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text(
          "Transaksi",
        ),
      ),
          body : Container(
            width: MediaQuery.of(context).size.width,
            child: StreamBuilder(
              stream: Firestore.instance.collection("order").snapshots(),
              builder: (context, snapshots),set()
                return order(order: snapshot.data.document,);
            ),

          ),
    );
  }

  Set<Center> set() {
    return {
              if(!snapshot.hasData)
                return Center(child: CircularProgressIndicator(),)
            };
  }
}

class Transakasi extends StatelessWidget {
  const Transakasi({ Key key, this.order }) : super(key: key);
  final List<DocumentSnapshot> order;
  
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: order == null ? 0 : order.length,
      itemBuilder: (context, i){
        String masalah = order[i].data['masalah'].toString();
        String lokasi = order[i].data["lokasi"].toString();
        return ListTile(
          title: Row(
            children: <Widget> [
              Text("Pemasalahan : $masalah"),
              Text("lokasi: $lokasi"),
            ],
          ),
        );
      },
      
    );
  }
}

/*class Transaksi extends StatelessWidget {
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
          child: new Text("Belum ada transaksi hari ini",
              style: TextStyle(
                fontSize: 20,
              )),
        ));
  }
}
