import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/saif/IdeaProjects/pfe/lib/firebase_auth/signIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pfe/user.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}


class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameInputController;
  TextEditingController emailInputController;
  TextEditingController passwordInputController;
  TextEditingController dateOfBirthInputController;
  TextEditingController phoneNumberInputController;
  
  void initState(){
    super.initState();
    nameInputController = TextEditingController();
    emailInputController = TextEditingController();
    passwordInputController = TextEditingController();
    dateOfBirthInputController = TextEditingController();
    phoneNumberInputController = TextEditingController();
  }
  
  
  String _name;
  String _email;
  String _password;
  DateTime _dateOfBirth;
  String _phoneNumber;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      autofocus: true,
      autocorrect: true,
      controller: nameInputController,
      decoration: InputDecoration(
          labelText: "Username",
          labelStyle: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          )),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return "Name is required";
        }
        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      controller: emailInputController,
      decoration: InputDecoration(
          labelText: "Email",
          labelStyle: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          )),
      validator: (String value) {
        if (value.isEmpty) {
          return "Email is required";
        }
        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      controller: passwordInputController,
        decoration: InputDecoration(
            labelText: "Password",
            labelStyle: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
        keyboardType: TextInputType.visiblePassword,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Password is Required';
          }

          return null;
        },
        onSaved: (String value) {
          _password = value;
        });
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      controller: phoneNumberInputController,
        decoration: InputDecoration(
            labelText: "Phone number",
            labelStyle: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
        keyboardType: TextInputType.phone,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Phone number is Required';
          }

          return null;
        },
        onSaved: (String value) {
          _phoneNumber = value;
        });
  }

  Widget _buildDateOfBirth() {
    return TextFormField(
      controller: dateOfBirthInputController,
        decoration: InputDecoration(
            labelText: "date of birth",
            labelStyle: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
        keyboardType: TextInputType.datetime,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Phone number is Required';
          }

          return null;
        },
        onSaved: (String value) {
          _phoneNumber = value;
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.orange[900],
                Colors.orange[800],
                Colors.orange[400]
              ])),
          child: Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 80),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(60),
                              topLeft: Radius.circular(60))),
                      child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      _buildName(),
                                      _buildEmail(),
                                      SizedBox(height: 20),
                                      _buildPhoneNumber(),
                                      SizedBox(height: 20),
                                      _buildDateOfBirth(),
                                      SizedBox(height: 20),
                                      _buildPassword(),
                                      SizedBox(height: 30),
                                      Row(
                                        children: <Widget>[
                                          RaisedButton(
                                            color: Colors.orange[900],
                                            child: Text(
                                              'submit',
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 20),
                                            ),
                                            onPressed: signUp,
                                            //Navigator.push(context, MaterialPageRoute(
                                            // builder: (context) => HomePage()));
                                          ),
                                          RaisedButton(
                                            color: Colors.orange[900],
                                            child: Text(
                                              'sign in ',
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 20),
                                            ),
                                            onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(
                                                  builder: (context) => HomePage()));
                                            },
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),)
                      ),
                    ),
                  ),
                ]),

          )),


    );
  }


  void signUp() async{
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      try{
        FirebaseUser _fUser = (await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: _email, password: _password)) as FirebaseUser;
        _fUser.sendEmailVerification();
        Navigator.of(context).pop();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }catch(e){
        print(e);

      }
    }
    if (nameInputController.text.isNotEmpty&&
        emailInputController.text.isNotEmpty&&
        phoneNumberInputController.text.isNotEmpty&&
        dateOfBirthInputController.text.isNotEmpty&&
        passwordInputController.text.isNotEmpty){
      Firestore.instance.collection("Users").add({
        "Username" : nameInputController.text,
        "email" : emailInputController.text,
        "phone number" : phoneNumberInputController.text,
        "date of birth" : dateOfBirthInputController.text,
        "password" : passwordInputController.text,
        "timestamp" : new DateTime.now()
      }).then((response){
        print(response.documentID);
      }).catchError((error)=>print(error));
    }
  }
}