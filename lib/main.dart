import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/models/task_data.dart';
import 'package:todoeyapp/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
