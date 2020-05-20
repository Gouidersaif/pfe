import 'package:flutter/material.dart';
import 'file:///C:/Users/saif/IdeaProjects/pfe/lib/firebase_auth/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pfe/firebase_auth/categoryChoice.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override


  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = new GoogleSignIn();


  String _email;
  String _password;

  Widget _enterUsername() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[200]))),
      child: TextFormField(
        validator: (input) {
          if (input.isEmpty) {
            return "please type your email";
          }
          return null;
        },
        onSaved: (input) => _email = input,
        decoration: InputDecoration(
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none),
      ),
    );
  }

  Widget _enterPassword() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[200]))),
      child: TextFormField(
        validator: (input) {
          if (input.isEmpty) {
            return "please provide a valide password";
          }
          return null;
        },
        onSaved: (input) => _password = input,
        decoration: InputDecoration(
            hintText: "password",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none),
        obscureText: true,
      ),
    );
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
          key: _loginKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                _enterUsername(),
                                _enterPassword()
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.orange[900]),
                            child: Center(
                              child: RaisedButton(
                                color: Colors.orange[900],
                                child: Text(
                                  "login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                onPressed: signIn,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.orange[900]),
                            child: Center(
                              child: RaisedButton(
                                color: Colors.orange[900],
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => RegisterPage()));
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Continue with social media",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue[500]),
                                  child: Center(
                                    child: RaisedButton(
                                      color: Colors.blue[500],
                                      child: Text(
                                        "Facebook",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.grey[500]),
                                  child: Center(
                                    child: RaisedButton(
                                      color: Colors.grey[500],
                                      child: Text(
                                        "google",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onPressed: () => _gSingin(),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async{
    final form = _loginKey.currentState;
    if (form.validate()) {
      form.save();
      try {
        AuthResult _user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Choice()));
      } catch (e) {
        print(e.message);
      }
    }
  }
  Future <FirebaseUser> _gSingin() async{
    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    final FirebaseUser user = (await _auth.signInWithCredential(credential)) as FirebaseUser;
    print("User is: ${user.email}");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Choice()));

    return user;


  }

}
