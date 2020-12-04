import 'package:flutter/material.dart';

import '../screens/clip_rect.dart';
import '../screens/clip_r_rect.dart';
import '../screens/clip_oval.dart';
import '../screens/clip_path.dart';
import '../screens/home_page.dart';

///Define app navigation
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 220,
            color: Colors.blue[600],
            child: Center(
                child: Text(
              'Clipping',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            )),
          ),
          SizedBox(height: 25),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(MyHomePage.routeName);
            },
            child: ListTile(
              leading: Icon(Icons.edit),
              title: Text('Playground'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ClippingRect.routeName);
            },
            child: ListTile(
              leading: Icon(Icons.edit),
              title: Text('ClipRect'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ClippingRRect.routeName);
            },
            child: ListTile(
              leading: Icon(Icons.edit),
              title: Text('ClipRRect'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ClippingOval.routeName);
            },
            child: ListTile(
              leading: Icon(Icons.edit),
              title: Text('ClipOval'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ClippingPath.routeName);
            },
            child: ListTile(
              leading: Icon(Icons.edit),
              title: Text('ClipPath'),
            ),
          ),

        ],
      ),
    );
  }
}
