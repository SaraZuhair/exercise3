// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../task_list/task_list_screen.dart';
import '../../models/todo.dart';
import '../../models/mock_todos.dart';

class Body extends StatefulWidget {
  final List<Todo> todos;
  Body(this.todos);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.todos.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,
      ),
      itemBuilder: (context, index) => ListTile(
          title: Text(widget.todos[index].title),
          subtitle: Text('This List has ' +
              widget.todos[index].task.length.toString() +
              ' task(s)'),
          trailing: CircleAvatar(
            child: Text(widget.todos[index].percentage.toString()),
          ),
          onTap: () async {
            final result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TaskListScreen(
                        todoList: Todo.copy(widget.todos[index]))));
            if (result != null) {
              widget.todos[index].update(result);
              setState(() {});
            }
            if (result == null) {}
            setState(() {});
          }),
    );
  }
}
