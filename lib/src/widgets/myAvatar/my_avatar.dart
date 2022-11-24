import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_widgets/my_widgets.dart';

class MyAvatar extends StatelessWidget {
  MyAvatar({
    Key? key,
    required this.avatar,
    this.size = 50,
    this.borderColor = Colors.black,
    this.borderSize = 0,
    this.hasBadges = false,
    this.badgedLeft = 0,
    this.badgedTop = 0,
    this.badgedColor = Colors.purple,
    this.badgedWidget,
  }) : super(key: key);

  final String avatar;
  final double size;
  final Color borderColor;
  final double borderSize;
  final bool hasBadges;
  final double badgedTop;
  final double badgedLeft;
  final Color badgedColor;
  final Widget? badgedWidget;

  Widget userTile(
      {required Widget firstLine,
      Widget? secondLine,
      Widget? thirdLine,
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
                      child: makeAvatar(),
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
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return makeAvatar();
  }

  Widget makeAvatar() {
    return (hasBadges) ? buildAvatarWithBadged() : buildAvatar();
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
      position: BadgePosition.topEnd(),
      padding: EdgeInsets.all(2),
      badgeContent: badgedWidget,
      child: buildAvatar(),
    );
  }
}
