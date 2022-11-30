import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_widgets/my.dart';

class MyAvatar extends StatelessWidget {
  MyAvatar({
    Key? key,
    required this.avatar,
    this.size = 50,
    this.borderColor = Colors.black,
    this.borderSize = 0,
    this.badgedColor = Colors.purple,
    this.badgedWidget,
    this.position,
  }) : super(key: key);

  final String avatar;
  final double size;
  final Color borderColor;
  final double borderSize;
  final Color badgedColor;
  final Widget? badgedWidget;
  final BadgePosition? position;

  Widget userTile(
      {required Widget firstLine,
      Widget? secondLine,
      Widget? thirdLine,
      Widget? bottomWidget,
      double tileRadius = 20,
      required Color backgroundColor}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(tileRadius),
            color: backgroundColor,
          ),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: createAvatar(),
                    ),
                    MySpace.horizontal(20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        firstLine,
                        secondLine ?? Container(),
                        thirdLine ?? Container(),
                      ],
                    )
                  ],
                ),
                (bottomWidget != null)
                    ? createBottomWidget(bottomWidget)
                    : Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return createAvatar();
  }

  Widget createAvatar() {
    return (badgedWidget != null) ? buildAvatarWithBadged() : buildAvatar();
  }

  Widget createBottomWidget(Widget bottomWidget) {
    return Column(
      children: [
        MySpace.vertical(30),
        bottomWidget,
      ],
    );
  }

  Widget buildAvatar() {
    return CircleAvatar(
        radius: size,
        backgroundColor: borderColor,
        child: CircleAvatar(
          radius: size - borderSize,
          backgroundImage: NetworkImage(avatar),
        ));
  }

  Widget buildAvatarWithBadged() {
    return Badge(
      shape: BadgeShape.square,
      borderRadius: BorderRadius.circular(5),
      position: position ?? BadgePosition.bottomEnd(),
      padding: const EdgeInsets.all(2),
      badgeContent: badgedWidget,
      badgeColor: badgedColor,
      child: buildAvatar(),
    );
  }
}
