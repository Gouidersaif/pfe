import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FootballProfilPage extends StatelessWidget {
  var firestoreDb = Firestore.instance.collection("Users").snapshots();
  var firestoreDb2 =
      Firestore.instance.collection("football player").snapshots();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.green[900],
          Colors.green[800],
          Colors.green[400]
        ])),
        child: Column(
          children: <Widget>[
            SizedBox(height: 100),
            Expanded(
              child: _getCard(),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              _getAvatar(),
              Text(
                "    Gouider saif ",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              Text("     "),
              Icon(Icons.email),
              Text("         Gouidersaif@gmail.com",
                  style: TextStyle(fontSize: 20))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              Text("     "),
              Icon(Icons.phone),
              Text("        27621983", style: TextStyle(fontSize: 20))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              Text("     "),
              Icon(Icons.assignment_ind),
              Text("         Male", style: TextStyle(fontSize: 20))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              Text("     "),
              Icon(Icons.date_range),
              Text("         27/04/1998", style: TextStyle(fontSize: 20))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              Text("  "),
              _getAvatar2(),
              Text(
                "    defense",
                style: TextStyle(color: Colors.green[900], fontSize: 20),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: <Widget>[
              Text("                                   "),
              RaisedButton(
                child: Text("Edit"),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Colors.redAccent, width: 1.2),
          image:
              DecorationImage(image: AssetImage("assets/images/download.jpg"))),
    );
  }

  Container _getAvatar2() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Colors.redAccent, width: 1.2),
          image: DecorationImage(
              image: AssetImage("assets/images/footballballtest1.jpg"))),
    );
  }
}
