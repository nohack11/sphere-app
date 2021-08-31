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
      backgroundColor: Colors.amberAccent,
      body: Container(
        padding: EdgeInsets.zero,
        child: Stack(
          fit: StackFit.expand,
          children: [
            BackImage(),
            Align(
              alignment: Alignment.bottomRight,
              child: RightArr(),
            ),
            Align(
              alignment: Alignment.bottomLeft,
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
      color: Colors.cyan,
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
      color: Colors.cyan,
      child: IconButton(
        icon: Image.asset('assets/icons/left_arrow.png'),
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
