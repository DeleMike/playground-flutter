import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
             // mainAxisSize: MainAxisSize.min,
              children: [
                FlutterLogo(size: 120, style: FlutterLogoStyle.stacked),
                FlutterLogo(size: 120, style: FlutterLogoStyle.stacked),
                FlutterLogo(size: 120, style: FlutterLogoStyle.stacked),
                FlutterLogo(size: 120, style: FlutterLogoStyle.stacked),
                FlutterLogo(size: 120, style: FlutterLogoStyle.stacked),
                ListView.builder(
                  shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: ((context, index) => Center(
                    child: SizedBox(
                          height: 120,
                          child: Text('Hello $index 🙂'),
                        ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
