import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LogoApp());
}

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double> (begin: 0, end: 300).animate(controller)
    ..addListener(() {
      setState(() {
        
      });
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
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

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
