import 'package:appmoove_mobile_test/components/detailed_info.dart';
import 'package:appmoove_mobile_test/components/image_display.dart';
import 'package:appmoove_mobile_test/components/movie_display.dart';
import 'package:appmoove_mobile_test/constants/constants.dart';
import 'package:appmoove_mobile_test/model/result.dart';
import 'package:flutter/material.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key? key, required this.result}) : super(key: key);

  final Result result;

  @override
  Widget build(BuildContext context) {
    final int rating = (result.voteAverage * 10).floor();
    return Scaffold(
      appBar: AppBar(
        title: Text(result.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageDisplay(
                  url:
                      "${Constants.baseImageUrl}${Constants.imageOriginalEndpoint}${result.posterPath}"),
              Wrap(
                spacing: 20,
                alignment: WrapAlignment.spaceAround,
                runSpacing: 20,
                children: [
                  DetailedInfo(
                      textName: "Title: ",
                      textNameStyle: const TextStyle(
                          fontSize: 22,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                      text: result.title),
                  DetailedInfo(
                      textName: "Original Language: ",
                      textNameStyle: const TextStyle(
                          fontSize: 22,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                      text: result.originalLanguage),
                  DetailedInfo(
                    textName: "Overview: ",
                    textNameStyle: const TextStyle(
                        fontSize: 22,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                    text: result.overview,
                    textStyle: const TextStyle(fontSize: 12),
                  ),
                  DetailedInfo(
                    textName: "Rating: ",
                    textNameStyle: const TextStyle(
                        fontSize: 22,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                    text: rating.toString(),
                    textStyle: rating < 45
                        ? const TextStyle(color: Colors.red)
                        : (rating >= 45 && rating < 70)
                            ? const TextStyle(color: Colors.orangeAccent)
                            : const TextStyle(color: Colors.green),
                  ),
                ],
              ),
              MovieDisplay(movieId: result.id)
            ],
          ),
        ),
      ),
    );
  }
}
