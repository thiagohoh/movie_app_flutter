import 'package:flutter/material.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({Key? key, required this.image}) : super(key: key);

  final Widget image;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox.fromSize(
        size: const Size.fromRadius(75),
        child: image,
      ),
    );
  }
}
