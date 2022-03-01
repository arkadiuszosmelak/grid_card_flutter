import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/widget/expanded_container_widget.dart';

class FourthGridScreen extends StatefulWidget {
  const FourthGridScreen({Key? key}) : super(key: key);

  @override
  State<FourthGridScreen> createState() => _FourthGridScreenState();
}

class _FourthGridScreenState extends State<FourthGridScreen> {
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
                  flexNumber: 2, containerColor: Colors.red),
              ExpandedContainerWidget(
                  flexNumber: 1, containerColor: Colors.grey),
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
                  flexNumber: 2, containerColor: Colors.purple),
            ],
          ),
        ),
      ],
    );
  }
}
