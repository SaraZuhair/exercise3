import 'package:flutter/material.dart';
import '../../models/todo.dart';

class Float extends StatelessWidget {
  Todo todos;
  Float(this.todos);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () => Navigator.pop(context, todos),
          label: Text('update'),
          icon: Icon(Icons.check_circle),
        ),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () => Navigator.pop(context, null),
          label: Text('Cancel'),
          icon: Icon(Icons.cancel),
        )
      ],
    );
  }
}
