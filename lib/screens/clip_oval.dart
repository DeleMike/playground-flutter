import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

///Class to play with ClipOval: this means we want to clip, say an image, into a rounded shape
///and that image should not exceed the boundaries of the rectagle.
///
///With ClipOval if the image has more width, ClipOval forms shape like a rugby ball
///if image has more height, ClipOval forms a shape like an egg
///if image is a square then a circle is guaranteed
class ClippingOval extends StatelessWidget {
  static const routeName = '/clipping-oval';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('ClipOval'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  'If the image has more width, ClipOval forms shape like a rugby ball...'),
            ),
            ClipOval(
              child: Container(
                height: 100,
                 width: 210,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/avatar_full.png'),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ClipOval(
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/avatar_full.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  'If image has more height, ClipOval forms a shape like an egg.'),
            ),
            SizedBox(
              height: 70,
            ),
            ClipOval(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/avatar_full.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  'if image has same height and width then a circle is guaranteed'),
            ),
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
