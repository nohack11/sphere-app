import 'package:flutter/material.dart';
import 'package:sphere_app/src/AppTheme.dart';
import 'package:sphere_app/src/register.dart';

// void main() {
//   runApp(MyApp());
// }

class Welcome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
      theme: AppTheme().lightTheme,
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
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
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
                        //fillColor: Colors.white54,
                        //filled: true,
                        hintText: 'Add your name',

                        //labelText: 'Enter your Name',
                        labelStyle: TextStyle(
                          fontFamily: 'NB_International',
                          fontWeight: FontWeight.bold,
                          //color: Colors.grey
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: ImageIcon(AssetImage('assets/icons/right_arrow_long.png'),
              color: Colors.black.withOpacity(1.0)),
          //backgroundColor: Colors.black54.withOpacity(0.5),
          foregroundColor: Colors.white,
          elevation: 0.0,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Register()));
          },
        ),
      ),
    );
  }
}
