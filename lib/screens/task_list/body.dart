// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../models/task.dart';

class Body extends StatefulWidget {
  final List<Task> task;
  Body(this.task);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: widget.task.length,
        separatorBuilder: (context, index) => Divider(
              color: Colors.grey,
            ),
        itemBuilder: (context, index) => ListTile(
            title: Text(
              widget.task[index].title,
              style: widget.task[index].completed == false
                  ? TextStyle()
                  : TextStyle(decoration: TextDecoration.lineThrough),
            ),
            onTap: () {
              setState(() {
                widget.task[index].completed = !widget.task[index].completed;
              });
            },
            onLongPress: () {
              setState(
                () {
                  widget.task.removeAt(index);
                },
              );
            }));
  }
}
