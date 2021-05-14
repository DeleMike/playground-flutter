import 'package:flutter/material.dart';

void main() {
  runApp(LogoApp());
}

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();

}
  
class _LogoAppState extends State<LogoApp>{  
  @override
  Widget build(BuildContext context) {
      return Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: 300,
          width: 300,
          child: FlutterLogo(),
        ),
      );

    // return MaterialApp(
    //   title: 'Animations with Flutter Logo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.purple,
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //   ),
    //    home: MyHomePage(),
    // );
  }
}

