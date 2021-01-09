import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Backdrop Effect')),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.indigo[300], Colors.indigo[900]],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 0.7],
              ),
            ),
          ),
          Center(
            child: ClipRect(
              child: Positioned.fill(
                //to ensure the filter completelys covers the widget
                child: BackdropFilter(
                  filter: ui.ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0),
                    ),
                    child: new Center(
                      child: Text(
                        'Hello, World.',
                        style: Theme.of(context).textTheme.headline6
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
