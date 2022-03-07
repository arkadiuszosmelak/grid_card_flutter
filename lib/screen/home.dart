import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/constant/change_grid.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/screen/first_grid_screen.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/screen/second_grid_screen.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/screen/third_grid_screen.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/screen/fourth_grid_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    FirstGridScreen(),
    SecondGridScreen(),
    ThirdGridScreen(),
    FourthGridScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Academy',
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) => Center(
          child: SizedBox(
            width: orientation == Orientation.portrait ? width : width / 2,
            height: width,
            child: _pages.elementAt(_selectedIndex),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) => setState(() {
          _selectedIndex = index;
          resetGrid();
        }),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.one_k_outlined), label: 'First'),
          BottomNavigationBarItem(
              icon: Icon(Icons.two_k_outlined), label: 'Second'),
          BottomNavigationBarItem(
              icon: Icon(Icons.three_k_outlined), label: 'Third'),
          BottomNavigationBarItem(
              icon: Icon(Icons.four_k_outlined), label: 'Fourth'),
        ],
      ),
    );
  }
}
