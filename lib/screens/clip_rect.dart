import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

///Class to play with ClipRect: this means we want to clip, say an image, to a rectangle
///and that image should not exceed the boundaries of the rectagle
class ClippingRect extends StatelessWidget {
  static const routeName = '/clipping-rect';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('ClipRect'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
                'Using clip rect to force fit image into the shape(ClipRect[square corners])...not interesting, right?'),
          ),
          ClipRect(
            child: Image.asset('assets/images/tom_and_jerry.jpg'),
          ),
        ],
      ),
      drawer: AppDrawer(),
    );
  }
}
