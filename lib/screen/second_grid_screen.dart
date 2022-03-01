import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/widget/expanded_container_widget.dart';

class SecondGridScreen extends StatefulWidget {
  const SecondGridScreen({Key? key}) : super(key: key);

  @override
  State<SecondGridScreen> createState() => _SecondGridScreenState();
}

class _SecondGridScreenState extends State<SecondGridScreen> {
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
                  flexNumber: 2, containerColor: Colors.red),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.green),
              Expanded(
                child: Row(
                  children: const [
                    ExpandedContainerWidget(
                        flexNumber: 1, containerColor: Colors.purple),
                    ExpandedContainerWidget(
                        flexNumber: 1, containerColor: Colors.yellow),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: const [
                    ExpandedContainerWidget(
                        flexNumber: 1, containerColor: Colors.blue),
                    ExpandedContainerWidget(
                        flexNumber: 1, containerColor: Colors.brown),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
