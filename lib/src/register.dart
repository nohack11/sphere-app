import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sphere_app/src/welcome.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: new RegisterPage(),
      ),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        child: Stack(
          fit: StackFit.expand,
          children: [
            BackImage(),
            IntroWord(),
            Align(
              child: FillBlankQ(),
              alignment: Alignment(-0.10, -0.15),
            ),
            Align(
              alignment: Alignment.center,
              child: FillBlank(),
            ),
            Align(
              alignment: Alignment(0.80, 0.87),
              child: RightArr(),
            ),
            Align(
              alignment: Alignment(-0.80, 0.87),
              child: LeftArr(),
            ),
          ],
        ),
      ),
    );
  }
}

class RightArr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Image.asset('assets/icons/right_arrow_long.png'),
        iconSize: 40,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WelcomePage()),
          );
        },
      ),
    );
  }
}

class LeftArr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Image.asset('assets/icons/left_arrow_long.png'),
        iconSize: 40,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WelcomePage()),
          );
        },
      ),
    );
  }
}

class BackImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/backgrounds/3.png'),
        ),
        color: Colors.transparent,
      ),
      //color: Colors.transparent,
    );
  }
}

class FillBlank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 320,
      decoration: BoxDecoration(
        //border: Border.all(),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 15.0,
            offset: Offset(0.0, 4.0),
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 15.0,
            offset: Offset(0.0, -4.0),
            spreadRadius: 1.0,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.grey[300],
            Colors.grey[300],
            Colors.grey[300],
            Colors.grey[300],
          ],
          stops: [0.1, 0.3, 0.8, 0.9],
        ),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: 'My name',
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class FillBlankQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "what's your age",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'NB_International',
        ),
      ),
    );
  }
}

class IntroWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(75.0, 170.0, 0.0, 0.0),
      child: Text(
        'answer the following',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'NB_International',
        ),
      ),
    );
  }
}
