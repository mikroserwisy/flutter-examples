import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  final _todos = <String>[];
  final _controller = TextEditingController(text: "Enter new todo");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("To do")),
        body: Column(children: [
          TextField(controller: _controller),
          Expanded(
              child: ListView.builder(
                  itemCount: _todos.length,
                  itemBuilder: (BuildContext context, int index) {
                    final todo = _todos[index];
                    return Dismissible(
                        key: Key("$todo"),
                        child: ListTile(title: Text(todo)),
                        onDismissed: (direction) => _todos.removeAt(index));
                  }))
        ]),
        floatingActionButton: FloatingActionButton(onPressed: _onTodoAdd, child: Icon(Icons.add))
    );
  }

  _onTodoAdd() {
    setState(() {
      _todos.add(_controller.text);
      _controller.clear();
    });
  }
}
