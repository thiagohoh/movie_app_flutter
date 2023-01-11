import 'package:appmoove_mobile_test/components/loading.dart';
import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  const ImageDisplay({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        return child;
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return const Center(
            child: Loading(),
          );
        }
      },
    );
  }
}
