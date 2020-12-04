import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

///Class to play with ClipRRect: this means we want to clip, say an image, to a rounded corner rectangle
///and that image should not exceed the boundaries of the rectagle
class ClippingRRect extends StatelessWidget {
  static const routeName = '/clipping-r-rect';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('ClipRRect'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
                'Using clip rect to force fit image into the shape(ClipRRect[rounded corners])...getting interesting, right?'),
          ),
          ClipRRect(
            //here you have to add the border radius, otherwise you are still using the clipRect
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/images/tom_and_jerry.jpg'),
          ),
        ],
      ),
      drawer: AppDrawer(),
    );
  }
}
