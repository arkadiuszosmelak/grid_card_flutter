import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/screen/home.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/custom_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Academy Task',
      theme: CustomTheme.dartTheme,
      home: const Home(),
    );
  }
}
