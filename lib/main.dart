import 'package:flutter/material.dart';
import 'package:flutter_app/ui/movies.dart';
import 'ui/bill_splitter.dart';
import 'ui/my_card.dart';
import 'ui/scaffold_material_hello_world.dart';
import 'ui/material_hello_world.dart';
import 'ui/todo.dart';

void main() {
  //runApp(HelloWorld());
  //runApp(MaterialHelloWorld());
  //runApp(MaterialApp(home: ScaffoldMaterialHelloWorld()));
  //runApp(MaterialApp(home: MyCard()));
  //runApp(MaterialApp(home: BillSplitter()));
  runApp(MaterialApp(home: Movies()));
  //runApp(MaterialApp(home: Todo()));
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

/*
https://pub.dev/packages/path_provider
https://pub.dev/packages/user_preferences
https://pub.dev/packages/shared_preferences
https://pub.dev/packages/hive
https://pub.dev/packages/sqlite3/example
https://pub.dev/packages/location
https://pub.dev/packages/geolocator
https://flutter.dev/docs/cookbook/plugins/picture-using-camera
https://pub.dev/packages/image_picker
https://flutter.dev/docs/cookbook/persistence/sqlite
https://flutter.dev/docs/cookbook/persistence/reading-writing-files
https://flutter.dev/docs/cookbook/persistence/key-value
https://flutteragency.com/how-to-detect-the-host-platform-from-dart-code/
https://pub.dev/packages/cached_network_image
 */
