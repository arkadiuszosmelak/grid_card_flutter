import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/widget/expanded_container_widget.dart';

class ThirdGridScreen extends StatefulWidget {
  const ThirdGridScreen({Key? key}) : super(key: key);

  @override
  State<ThirdGridScreen> createState() => _ThirdGridScreenState();
}

class _ThirdGridScreenState extends State<ThirdGridScreen> {
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
                  flexNumber: 1, containerColor: Colors.grey),
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.red),
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.black),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: const [
                    ExpandedContainerWidget(
                        flexNumber: 1, containerColor: Colors.yellow),
                    ExpandedContainerWidget(
                        flexNumber: 1, containerColor: Colors.green),
                  ],
                ),
              ),
              const ExpandedContainerWidget(
                  flexNumber: 2, containerColor: Colors.purple),
            ],
          ),
        ),
      ],
    );
  }
}
