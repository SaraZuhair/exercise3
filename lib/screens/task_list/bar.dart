import 'package:flutter/material.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  Bar(this.title);

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: Text('Task List of $title '),
      centerTitle: true,
    );
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
