import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/widget/expanded_container_widget.dart';

class FirstGridScreen extends StatelessWidget {
  const FirstGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        columnSquares(2, 5, 7),
        columnSquares(0, 8, 6),
        columnSquares(3, 4, 1, true),
      ],
    );
  }

  Widget columnSquares(
      int firstNumberWidget, int secondNumberWidget, int thirdNumberWidget,
      [bool isExpectation = false]) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          ExpandedContainerWidget(
            flexNumber: 1,
            widgetNumber: firstNumberWidget,
          ),
          ExpandedContainerWidget(
            flexNumber: 1,
            widgetNumber: secondNumberWidget,
          ),
          ExpandedContainerWidget(
              flexNumber: 1,
              widgetNumber: thirdNumberWidget,
              isExpectations: isExpectation),
        ],
      ),
    );
  }
}
