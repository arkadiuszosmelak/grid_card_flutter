import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/widget/expanded_container_widget.dart';

class FourthGridScreen extends StatelessWidget {
  const FourthGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: const [
              ExpandedContainerWidget(flexNumber: 2, widgetNumber: 9),
              ExpandedContainerWidget(flexNumber: 1, widgetNumber: 7),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: const [
              ExpandedContainerWidget(flexNumber: 1, widgetNumber: 2),
              ExpandedContainerWidget(flexNumber: 1, widgetNumber: 0),
              ExpandedContainerWidget(flexNumber: 1, widgetNumber: 5),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: const [
              ExpandedContainerWidget(flexNumber: 1, widgetNumber: 3),
              ExpandedContainerWidget(
                flexNumber: 2,
                widgetNumber: 1,
                isExpectations: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
