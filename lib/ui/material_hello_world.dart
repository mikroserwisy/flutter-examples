import 'package:flutter/material.dart';

class MaterialHelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: Center(
            child: Text("HelloWorld!",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold))));
  }
}
