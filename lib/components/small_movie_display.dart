import 'package:appmoove_mobile_test/components/movie_image.dart';
import 'package:flutter/material.dart';

class SmallMovieDisplay extends StatelessWidget {
  const SmallMovieDisplay({Key? key, required this.title, required this.image, this.onClick})
      : super(key: key);

  final String title;
  final Widget image;
  final Function? onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick?.call();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MovieImage(image: image),
          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
