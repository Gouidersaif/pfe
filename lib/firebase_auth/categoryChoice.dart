import 'package:flutter/material.dart';
import 'package:pfe/basketball/basketballProfil.dart';
import 'package:pfe/football/footballProfil.dart';
import 'package:pfe/tennis/tennisProfil.dart';

class Choice extends StatefulWidget {
  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SportPAL"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Football"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FootballProfilPage()));
            },
          ),
          SizedBox(height: 80,),
          RaisedButton(
            child: Text("Tennis"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TennisProfilPage()));
            },
          ),
          SizedBox(height: 80,),
          RaisedButton(
            child: Text("Basketball"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BasketBallProfilPage()));
            },
          ),
        ],
      ),
    );
  }
}
