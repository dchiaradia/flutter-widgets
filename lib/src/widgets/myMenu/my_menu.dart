// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:my_widgets/my.dart';

class MyMenuItem {
  IconData? icon;
  Widget child;
  VoidCallback? callback = () {};
  bool? enableArrow = false;
  bool? hasBadge = false;
  double? iconSize = 25;
  double itemHeight;

  Color? iconColor = MyColors().mediumGrayColor;
  Color? arrowColor = MyColors().mediumGrayColor;

  MyMenuItem(
      {required this.icon,
      required this.child,
      required this.enableArrow,
      required this.callback,
      this.itemHeight = 50,
      this.iconSize = 25,
      this.iconColor,
      this.arrowColor,
      this.hasBadge = false});
}

class MyMenu extends StatelessWidget {
  final List<MyMenuItem> lstItens;

  const MyMenu({
    required this.lstItens,
    Key? key,
  }) : super(key: key);

  List<Widget> constructMenu() {
    List<Widget> retorno = [];
    lstItens.forEach((element) {
      retorno.add(
        Material(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
            bottomLeft: Radius.circular(18),
            bottomRight: Radius.circular(18),
          ),
          child: InkWell(
            onTap: () {
              element.callback!();
            },
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: SizedBox(
                    height: element.itemHeight,
                    width: element.iconSize,
                    child: Icon(
                      element.icon,
                      size: element.iconSize,
                      color: (element.hasBadge == false)
                          ? element.iconColor
                          : Colors.red,
                    ),
                  ),
                ),
                element.child,
                MySpace.horizontal(20),
                const Expanded(flex: 1, child: Center()),
                (element.enableArrow == true)
                    ? Container(
                        margin: EdgeInsets.only(right: 14),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: element.arrowColor,
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      );
    });
    return retorno;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18)),
            color: MyColors().white,
          ),
          child: Column(
            children: constructMenu(),
          ),
        ),
      ],
    );
  }
}
