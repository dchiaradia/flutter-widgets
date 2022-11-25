// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_widgets/my_widgets.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MyBottomSheet extends StatefulWidget {
  final double maxHeight;
  final double minHeight;
  final Widget child;
  final double radius;
  Color? backgroundColor = MyColors().white;

  VoidCallback? onOpenCallback = () {};
  VoidCallback? onCloseCallback = () {};

  PanelState defaultState = PanelState.CLOSED;

  MyBottomSheet({
    Key? key,
    required this.maxHeight,
    required this.minHeight,
    required this.child,
    this.radius = 20,
    this.onOpenCallback,
    this.onCloseCallback,
    this.backgroundColor = Colors.white,
    this.defaultState = PanelState.CLOSED,
  }) : super(key: key);

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  double additionalHeight = 5;

  @override
  Widget build(BuildContext context) {
    PanelController panelController = PanelController();
    return SlidingUpPanel(
      controller: panelController,
      renderPanelSheet: true,
      color: widget.backgroundColor!,
      maxHeight: widget.maxHeight + additionalHeight,
      minHeight: widget.minHeight + additionalHeight,
      parallaxEnabled: true,
      parallaxOffset: .5,
      panel: createPanel(),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(widget.radius),
        topRight: Radius.circular(widget.radius),
      ),
      onPanelOpened: () {
        print('open bottom sheet');
        if (widget.onOpenCallback != null) {
          widget.onOpenCallback!();
        }
      },
      onPanelClosed: () {
        print('close bottom sheet');

        if (widget.onCloseCallback != null) {
          widget.onCloseCallback!();
        }
      },
      defaultPanelState: widget.defaultState,
    );
  }

  Widget createPanel() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          MySpace.vertical(8),
          Center(
              child: Container(
            width: 42,
            height: 3,
            decoration: BoxDecoration(
                color: MyColors().darkGrayColor,
                borderRadius: BorderRadius.circular(17)),
          )),
          MySpace.vertical(16),
          widget.child
        ],
      ),
    );
  }
}
