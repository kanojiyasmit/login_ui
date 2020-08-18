import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/signin.dart';
import 'package:login_ui/Pages/signup.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Widget _login() {
    return Container(
      height: 50.0,
      width: double.infinity,
      decoration: BoxDecoration(),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => signin()),
          );
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.white,
        child: Text(
          'SIGN IN',
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.0,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
  Widget _register() {
    return Container(
      height: 50.0,
      width: double.infinity,
      decoration: BoxDecoration(),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => signup(),
              ));
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
        child: Text(
          'SIGN UP',
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.0,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
  Widget _touchid() {
    return Container(
      child: Column(
        children: [
          Text(
            'Quick Login With Fingerprint',
            style: GoogleFonts.openSans(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20.0),
          Icon(
            Icons.fingerprint,
            color: Colors.white,
            size: 80.0,
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue,
                  Colors.blueAccent,
                ],
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 300),
              child: Column(
                children: [
                  _login(),
                  SizedBox(height: 20.0),
                  _register(),
                  SizedBox(height: 30.0),
                  _touchid(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
