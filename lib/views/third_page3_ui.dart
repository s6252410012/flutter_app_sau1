import 'package:flutter/material.dart';

class ThirdPage3UI extends StatelessWidget {
  const ThirdPage3UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Center(
          child: Icon(
            Icons.ice_skating,
            color: Colors.white,
            size: 100.0,
          ),
        ),
      ),
    );
  }
}
