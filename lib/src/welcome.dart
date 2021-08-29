import 'package:flutter/material.dart';
import 'package:sphere_app/src/register.dart';

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
    return MaterialApp(
      title: 'Sphere',
      home: Stack(
        children: [
          BackImage(),
          Scaffold(
            backgroundColor: Colors.blue,
            body: Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(135.0, 280.0, 0.0, 0.0),
                    child: Text('Welcome',
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NB_International')),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(8.0),
                      child: Text('My name is',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'NB_International')),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 45.0,
                      width: 280.0,
                      color: Colors.white,
                      child: new Center(
                        child: Material(
                          color: Colors.white.withOpacity(0.1),
                          elevation: 15.0,
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          shadowColor: Colors.white,
                          child: TextField(
                            //this has input decoration has to change
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                              hintText: 'Add your name',
                              labelStyle: TextStyle(
                                fontFamily: 'NB_International',
                                fontWeight: FontWeight.bold,
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //arrow button
                  SizedBox(height: 20.0),

                  SizedBox(width: 20.0),
                  Container(
                    child: IconButton(
                      icon: Image.asset('assets/icons/right_arrow_long.png'),
                      iconSize: 40,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
