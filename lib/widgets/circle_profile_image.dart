import 'package:flutter/material.dart';

/// `UserProfileImage` is reusable widget with returns circular image
/// parameters:
/// [avatar] URL of image
/// [size] size of image

class UserProfileImage extends StatelessWidget {
  final String avatar;
  final double size;

  UserProfileImage({required this.avatar, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(avatar))),
    );
  }
}
