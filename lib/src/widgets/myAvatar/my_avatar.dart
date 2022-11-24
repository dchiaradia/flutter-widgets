import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  const MyAvatar({Key? key, required this.avatar, this.size = 51})
      : super(key: key);

  final String avatar;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        height: size,
        width: size,
        child: ClipOval(
          child: CachedNetworkImage(
            width: size,
            height: size,
            imageUrl: this.avatar == ''
                ? 'https://cdn-icons-png.flaticon.com/512/147/147144.png'
                : this.avatar,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    ]);
  }
}
