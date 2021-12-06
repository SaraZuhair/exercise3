import 'package:flutter/material.dart';
import '../../models/todo.dart';
import 'bar.dart';
import 'body.dart';

class TodoListScreen extends StatefulWidget {
  final List<Todo> todos;
  const TodoListScreen(this.todos);

  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: Bar(widget.todos[0]),
            body: Body(widget.todos),
          ),
        ));
  }
}
