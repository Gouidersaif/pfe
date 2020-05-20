import 'package:flutter/material.dart';
import 'package:pfe/Profil.dart';
import 'package:pfe/firebase_auth/categoryChoice.dart';
import 'package:pfe/firebase_auth/register.dart';
import 'package:pfe/firebase_auth/signIn.dart';
import 'file:///C:/Users/saif/IdeaProjects/pfe/lib/firebase_auth/signIn.dart';

import 'package:pfe/firebase_auth/signIn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Choice(),
    );
  }
}
