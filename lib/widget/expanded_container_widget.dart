import 'package:flutter/material.dart';

class ExpandedContainerWidget extends StatelessWidget {
  const ExpandedContainerWidget(
      {Key? key, required this.flexNumber, required this.containerColor})
      : super(key: key);

  final int flexNumber;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexNumber,
      child: Container(
        color: containerColor,
      ),
    );
  }
}
