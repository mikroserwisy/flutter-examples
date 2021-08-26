import 'package:flutter/material.dart';
import 'package:flutter_app/ui/movies.dart';
import 'ui/bill_splitter.dart';
import 'ui/my_card.dart';
import 'ui/scaffold_material_hello_world.dart';
import 'ui/material_hello_world.dart';

void main() {
  //runApp(HelloWorld());
  //runApp(MaterialHelloWorld());
  //runApp(MaterialApp(home: ScaffoldMaterialHelloWorld()));
  //runApp(MaterialApp(home: MyCard()));
  //runApp(MaterialApp(home: BillSplitter()));
  runApp(MaterialApp(home: Movies()));
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("HelloWorld!",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.red, fontSize: 24)));
  }

}