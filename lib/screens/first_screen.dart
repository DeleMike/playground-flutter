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
                colors: [Colors.indigo[100], Colors.black12],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 0.9],
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Container(
              height: 220.0,
              width: 300.0,
              child: Image.asset('assets/images/avatar_full.png'),
            ),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 10.0,
                ),
                child: Container(
                  height: 220.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.grey.shade50.withOpacity(0.4),
                  ),
                  child: new Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('BackDrop Effect', style: Theme.of(context).textTheme.headline6),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Username',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                    // child: Text(
                    //   'Hello, World.',
                    //   style: Theme.of(context).textTheme.headline6,),
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
