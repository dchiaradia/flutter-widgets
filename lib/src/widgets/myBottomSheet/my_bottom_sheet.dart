// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_widgets/my.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MyBottomSheet extends StatefulWidget {
  final double maxHeight;
  final double minHeight;
  final Widget child;
  final double radius;
  PanelController panelController;
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
    required this.panelController,
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
    return SlidingUpPanel(
      controller: widget.panelController,
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
    return Column(
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
        MySpace.vertical(24),
        SizedBox(
          height: widget.maxHeight - 8 - 3 - 16 - 8,
          child: SingleChildScrollView(
            child: Column(
              children: [
                widget.child,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
