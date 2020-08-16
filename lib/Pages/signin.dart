import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  Widget _buildemail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email Id',
          style: GoogleFonts.openSans(
            color: Colors.white,
          ),
        ),
        SizedBox(height: 2.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white38,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              contentPadding: EdgeInsets.only(top: 14),
              hintText: 'Enter Your Email Id',
              hintStyle: GoogleFonts.openSans(
                color: Colors.white38,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildpassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: GoogleFonts.openSans(
            color: Colors.white,
          ),
        ),
        SizedBox(height: 2.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white38,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              contentPadding: EdgeInsets.only(top: 14),
              hintText: 'Enter Your Password',
              hintStyle: GoogleFonts.openSans(
                color: Colors.white38,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildreme() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 1.0),
      child: InkWell(
        onTap: () {
          print('Forgot Password');
        },
        child: Text(
          'Forgot Password?',
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildlogin() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
        child: Text(
          'LOGIN',
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

  Widget _buildother() {
    return Column(
      children: [
        Text(
          '-OR-',
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in With',
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildsocial() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              print('Login With FAcebook');
            },
            child: Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage('assets/Images/Google.png'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Login With FAcebook');
            },
            child: Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage('assets/Images/Facebook.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _signup() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an Account ? ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
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
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  _buildemail(),
                  SizedBox(height: 30.0),
                  _buildpassword(),
                  SizedBox(height: 10.0),
                  _buildreme(),
                  SizedBox(height: 50.0),
                  _buildlogin(),
                  SizedBox(height: 20.0),
                  _buildother(),
                  _buildsocial(),
                  _signup(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
