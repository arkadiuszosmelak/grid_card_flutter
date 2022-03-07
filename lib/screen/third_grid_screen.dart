import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/widget/expanded_container_widget.dart';

class ThirdGridScreen extends StatelessWidget {
  const ThirdGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: const [
              ExpandedContainerWidget(flexNumber: 1, widgetNumber: 2),
              ExpandedContainerWidget(flexNumber: 1, widgetNumber: 5),
              ExpandedContainerWidget(flexNumber: 1, widgetNumber: 6),
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
                    ExpandedContainerWidget(flexNumber: 1, widgetNumber: 0),
                    ExpandedContainerWidget(flexNumber: 1, widgetNumber: 3),
                  ],
                ),
              ),
              const ExpandedContainerWidget(
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
