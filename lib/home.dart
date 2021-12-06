import 'package:flutter/material.dart';
import 'package:mainpro/models/assessment.dart';
import 'package:mainpro/models/group_member.dart';
import 'package:mainpro/models/mock_data.dart';
import 'models/mock_todos.dart';
import 'screens/summary.dart';
import 'screens/adjuster.dart';
import 'screens/todo_list/todo_list_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:
          3, //By making the length 3 we are telling the widget you have 3 tabs
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          title: const Text("Lists"),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.list),
            ),
            Tab(
              icon: Icon(Icons.adjust),
            ),
            Tab(
              icon: Icon(Icons.check),
            )
          ]),
        ), //and this is how we add the 3 different apps into one app, and each their own tab
        body: TabBarView(
          children: [
            SummaryScreen(GroupMember("Jimmy", " Jimmy Shaw"), mockData),
            AdjustPage(),
            TodoListScreen(mockdata)
          ],
        ),
      ),
    );
  }
}
