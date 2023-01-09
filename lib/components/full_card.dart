import 'package:appmoove_mobile_test/components/movie_image.dart';
import 'package:flutter/material.dart';

class FullCard extends StatelessWidget {
  const FullCard(
      {Key? key, required this.title, required this.imageWidget, this.onClick})
      : super(key: key);

  final String title;
  final Widget imageWidget;
  final Function? onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          onClick?.call();
        },
        child: Card(
          borderOnForeground: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.red)),
          shadowColor: Colors.redAccent,
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               MovieImage(image: imageWidget),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
