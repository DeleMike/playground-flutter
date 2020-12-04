import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clipping'),
      ),
      body: Center(
        child: Text('Play has no ends'),
      ),
      drawer: AppDrawer(),
    );
  }
}
