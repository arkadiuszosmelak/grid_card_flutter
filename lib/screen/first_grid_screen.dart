import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/widget/expanded_container_widget.dart';

class FirstGridScreen extends StatefulWidget {
  const FirstGridScreen({Key? key}) : super(key: key);

  @override
  State<FirstGridScreen> createState() => _FirstGridScreenState();
}

class _FirstGridScreenState extends State<FirstGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: const [
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.red),
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.grey),
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.orange),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: const [
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.green),
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.black),
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.brown),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: const [
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.yellow),
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.purple),
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.pink),
            ],
          ),
        ),
      ],
    );
  }
}
