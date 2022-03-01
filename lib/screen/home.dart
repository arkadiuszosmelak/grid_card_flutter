import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/widget/expanded_container_widget.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/screen/first_grid_screen.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/screen/second_grid_screen.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/screen/third_grid_screen.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/screen/fourth_grid_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) => SizedBox(
          width: orientation == Orientation.portrait
              ? mediaQuery.width
              : mediaQuery.width / 2,
          height: mediaQuery.width,
          child: const SecondGridScreen(),
        ),
      ),
    );
  }
}
