import 'package:flutter/material.dart';
import 'router.dart';
import 'constants.dart'; //this Constant is hoe you can get some funcationalities back
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: homeRoute,
      onGenerateRoute: createRoute,
      home: const HomePage(),
    );
  }
}
