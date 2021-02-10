import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  Widget _buildWidget() {
    return Center(
              child: PhysicalModel(
               color: Colors.transparent,
                elevation: 8.0,
                shadowColor: Colors.black87,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.grey.shade900
                        // .withGreen(200)
                        // .withBlue(200)
                        .withAlpha(200)
                        .withRed(200),
                  ),
                  child: Align(child: Text('Hello there!', style:TextStyle(color: Colors.white))),
                ),
              ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Physical model?'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildWidget(),
            Spacer(),
            _buildWidget(),
          ],
        ),
      ),
    );
  }
}
