import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/signin.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  Widget _buildname() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Full Name',
          style: GoogleFonts.openSans(
            color: Colors.white,
          ),
        ),
        SizedBox(height: 2.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 50.0,
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
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.account_box,
                color: Colors.white,
              ),
              contentPadding: EdgeInsets.only(top: 14),
              hintText: 'Enter Your Name',
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
  Widget _buildphoneno() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone No',
          style: GoogleFonts.openSans(
            color: Colors.white,
          ),
        ),
        SizedBox(height: 2.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 50.0,
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
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              contentPadding: EdgeInsets.only(top: 14),
              hintText: 'Enter Your Phone No',
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
  Widget _buildemailid() {
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
          height: 50.0,
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
          height: 50.0,
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
            keyboardType: TextInputType.emailAddress,
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
  Widget _buildrepass() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Confirm Password',
          style: GoogleFonts.openSans(
            color: Colors.white,
          ),
        ),
        SizedBox(height: 2.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 50.0,
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
                Icons.lock,
                color: Colors.white,
              ),
              contentPadding: EdgeInsets.only(top: 14),
              hintText: 'Confirm Password',
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
  Widget _buildregister() {
    return Container(
      height: 50.0,
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          print('Register');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Text(
          'REGISTER',
          style: GoogleFonts.openSans(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
  Widget _signin() {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => signin())
        );
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Have an Account ? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign in',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
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
            padding: EdgeInsets.fromLTRB(40, 80, 40, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  _buildname(),
                  SizedBox(height: 20.0),
                  _buildphoneno(),
                  SizedBox(height: 20.0),
                  _buildemailid(),
                  SizedBox(height: 20.0),
                  _buildpassword(),
                  SizedBox(height: 20.0),
                  _buildrepass(),
                  SizedBox(height: 30.0),
                  _buildregister(),
                  SizedBox(height: 40.0),
                  _signin(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
