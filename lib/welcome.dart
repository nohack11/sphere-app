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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
        body: Center(
          child: Align(
            alignment: Alignment(0.01, -0.2),
            child: Text(
              'WELCOME',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 42,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
