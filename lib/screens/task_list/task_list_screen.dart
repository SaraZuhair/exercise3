import 'package:flutter/material.dart';
import '../../models/todo.dart';
import 'bar.dart';
import 'body.dart';
import 'float.dart';

class TaskListScreen extends StatefulWidget {
  final Todo todoList;
  TaskListScreen({Key? key, required this.todoList}) : super(key: key);

  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            appBar: Bar(widget.todoList.title),
            body: Body(widget.todoList.task),
            floatingActionButton: Float(widget.todoList),
          ),
        ));
  }
}
