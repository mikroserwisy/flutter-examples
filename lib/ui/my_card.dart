import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _textStyle = TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 2);
    return Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                  width: 450,
                  height: 220,
                  margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(8)),
                  child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text("Jan Kowalski", style: _textStyle)),
                    Divider(height: 20, thickness: 2, indent: 40, endIndent: 40),
                    Text("jan.kowalski@gmail.com", style: _textStyle),
                    SizedBox(height: 5),
                    Text("612-345-135", style: _textStyle)
                  ])),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(image: NetworkImage("https://d.newsweek.com/en/full/1726977/actors-cut-out-movies.jpg"), fit: BoxFit.cover)))
            ])));
  }
}
