import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/saif/IdeaProjects/pfe/lib/firebase_auth/signIn.dart';

class ProfilPage extends StatelessWidget {

  var firestoreDb = Firestore.instance.collection("Users").snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SportPAL"),
      ),
      body: StreamBuilder(
          stream: firestoreDb,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return CircularProgressIndicator();
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context,int index){
                  return Text(snapshot.data.documents[index]['Username']);
                });
          }),

    );
  }
}
