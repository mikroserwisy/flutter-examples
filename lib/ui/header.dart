import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  final String title;

  Header({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(title,
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey)));
  }

}
