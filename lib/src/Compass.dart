import 'package:flutter/material.dart';

class Compass extends StatelessWidget {
  const Compass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Compass"),
      ),
    );
  }
}
