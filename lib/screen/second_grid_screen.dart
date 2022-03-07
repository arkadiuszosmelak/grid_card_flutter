import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/widget/expanded_container_widget.dart';

class SecondGridScreen extends StatelessWidget {
  const SecondGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: const [
              ExpandedContainerWidget(flexNumber: 1, widgetNumber: 2),
              ExpandedContainerWidget(
                  flexNumber: 2, widgetNumber: 1, isExpectations: true),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const ExpandedContainerWidget(flexNumber: 1, widgetNumber: 0),
              rowSquares(3, 6),
              rowSquares(5, 7),
            ],
          ),
        ),
      ],
    );
  }

  Widget rowSquares(int firstNumberWidget, int secondNumberWidget) => Expanded(
        child: Row(
          children: [
            ExpandedContainerWidget(
                flexNumber: 1, widgetNumber: firstNumberWidget),
            ExpandedContainerWidget(
                flexNumber: 1, widgetNumber: secondNumberWidget),
          ],
        ),
      );
}
