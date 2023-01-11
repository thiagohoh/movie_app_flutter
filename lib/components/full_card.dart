import 'package:appmoove_mobile_test/components/glassmorph.dart';
import 'package:appmoove_mobile_test/components/image_display.dart';
import 'package:appmoove_mobile_test/components/info_box.dart';
import 'package:appmoove_mobile_test/constants/constants.dart';
import 'package:appmoove_mobile_test/model/result.dart';
import 'package:flutter/material.dart';

class FullCard extends StatelessWidget {
  const FullCard({Key? key, required this.result, this.onClick})
      : super(key: key);

  final Result result;
  final Function? onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          onClick?.call();
        },
        child: Stack(children: [
          SizedBox(
            width: double.infinity,
            height: 150,
            child: Image.network(
                "${Constants.baseImageUrl}${Constants.imageOriginalEndpoint}${result.backdropPath}"),
          ),
          Glassmorph(
              blur: 10,
              opacity: 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InfoBox(text: result.title, fontSize: 18),
                        InfoBox(text: result.releaseDate)
                      ],
                    )
                  ]),
                  ClipOval(
                      child: SizedBox.fromSize(
                    size: const Size.fromRadius(75),
                    child: ImageDisplay(
                        url:
                            "${Constants.baseImageUrl}${Constants.imageOriginalEndpoint}${result.posterPath}"),
                  ))
                ],
              )),
        ]),
      ),
    );
  }
}
