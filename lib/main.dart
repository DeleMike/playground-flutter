import 'package:flutter/material.dart';

import './screens/home_page.dart';
import './screens/clip_rect.dart';
import './screens/clip_r_rect.dart';
import './screens/clip_oval.dart';
import './screens/clip_path.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter PlayGround',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/' : (ctx) => MyHomePage(),
        ClippingRect.routeName : (ctx) => ClippingRect(),
        ClippingRRect.routeName : (ctx) => ClippingRRect(),
        ClippingOval.routeName : (ctx) => ClippingOval(),
        ClippingPath.routeName : (ctx) => ClippingPath(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}