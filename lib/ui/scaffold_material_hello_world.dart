import 'package:flutter/material.dart';

class ScaffoldMaterialHelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color _defaultColor = Colors.deepOrange.shade200;
    return Scaffold(
        appBar: AppBar(
            title: Text("Material HelloWorld"),
            centerTitle: true,
            backgroundColor: Colors.deepOrange.shade500,
            actions: [
              IconButton(
                  icon: Icon(Icons.add_a_photo_outlined),
                  onPressed: () => debugPrint("Take photo...")),
              IconButton(icon: Icon(Icons.print), onPressed: _onPrint)
            ]),
        body: Center(
            child: InkWell(
                child: Text("HelloWorld!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        letterSpacing: 2,
                        color: _defaultColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                onTap: () {
                  debugPrint("On tap...");
                })),
        floatingActionButton: FloatingActionButton(
            backgroundColor: _defaultColor,
            child: Icon(Icons.plus_one),
            onPressed: () {
              final snackBar = SnackBar(
                  duration: Duration(seconds: 3),
                  content: Text("Hello there!"),
                  backgroundColor: _defaultColor);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }));
  }

  void _onPrint() {
    debugPrint("Print...");
  }
}
