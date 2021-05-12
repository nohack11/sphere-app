import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class Welcome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sphere',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sphere App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(135.0, 280.0, 0.0, 0.0),
              child: Text('Welcome',
                  style:
                      TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 40.0),
            Container(
              height: 40.0,
              width: 275.0,
              alignment: Alignment.center,
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.grey.shade400,
                elevation: 30.0,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your Name',
                    labelStyle: TextStyle(
                        fontFamily: 'NB_International',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
