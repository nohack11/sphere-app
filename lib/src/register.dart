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
      body: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.cyan,
            alignment: Alignment(-1.0, 0.0),
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
          ),
        ],
      ),
    );
  }
}
