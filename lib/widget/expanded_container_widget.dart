import 'package:flutter/material.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/constant/change_grid.dart';
import 'package:arkadiusz_osmelak_flutter_academy_task_zero/widget/list_container_widget.dart';

class ExpandedContainerWidget extends StatefulWidget {
  const ExpandedContainerWidget(
      {Key? key,
      required this.flexNumber,
      required this.widgetNumber,
      this.isExpectations = false})
      : super(key: key);

  final int flexNumber;
  final int widgetNumber;
  final bool isExpectations;

  @override
  State<ExpandedContainerWidget> createState() =>
      _ExpandedContainerWidgetState();
}

class _ExpandedContainerWidgetState extends State<ExpandedContainerWidget> {
  void changeGrid() {
    setState(() {
      grid[widget.widgetNumber] = !grid[widget.widgetNumber]!;
    });
  }

  void changeGridWhenExpectations() {
    changeGrid();
    showDialog(
      context: context,
      builder: (BuildContext context) =>
          Dialog(child: Image.asset('images/expectations.jpg')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flexNumber,
      child: GestureDetector(
        onTap: () =>
            widget.isExpectations ? changeGridWhenExpectations() : changeGrid(),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: grid[widget.widgetNumber]!
                  ? Colors.blueGrey
                  : !widget.isExpectations
                      ? Colors.grey[300]
                      : Colors.grey,
              border: Border.all(
                color: grid[widget.widgetNumber]! ? Colors.cyan : Colors.white,
                width: 2,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: listContainerWidget[widget.widgetNumber],
          ),
        ),
      ),
    );
  }
}
