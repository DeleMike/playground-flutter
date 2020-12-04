import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

///Class to play with ClipPath: this means we want to clip, say an image,
///to any kind of shape your imagination wants and that image
///should not exceed the boundaries of the shape
///
///To clip to a particular ShapeBorder,
/// consider using either the ClipPath.shape static method
/// or the ShapeBorderClipper custom clipper class.
class ClippingPath extends StatelessWidget {
  static const routeName = '/clipping-path';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('ClipPath'),
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
            ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/avatar_full.png'),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ClipPath(
              clipper: MySecondCustomClipper(),
              child: Container(
                width: 200,
                height: 250,
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
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height),
    radius: Radius.elliptical(30, 10));
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MySecondCustomClipper extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    var curXPos = 0.0;
    var curYPos = size.height;
    var increment = size.width / 40;
    while (curXPos < size.width) {
      curXPos += increment;
      curYPos = curYPos == size.height ? size.height - 30 : size.height;
      path.lineTo(curXPos, curYPos);
    }
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
