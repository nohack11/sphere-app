import 'package:flutter/material.dart';
import 'package:sphere_app/src/screens/register.dart';

class Welcome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: WelcomePage(),
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
          image: AssetImage('assets/img/backgrounds/2.png'),
        ),
        color: Colors.transparent,
      ),
      //color: Colors.transparent,
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            BackImage(),
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(135.0, 280.0, 0.0, 0.0),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NB_International',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.80, 0.87),
                    child: RightArr(),
                  ),
                  Align(
                    child: FillBlankQ(),
                    alignment: Alignment(-0.10, -0.15),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: FillBlank(),
                  ),
                ],
              ),
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
            MaterialPageRoute(builder: (context) => RegisterPage()),
          );
        },
      ),
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
        "My name is",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'NB_International',
        ),
      ),
    );
  }
}
