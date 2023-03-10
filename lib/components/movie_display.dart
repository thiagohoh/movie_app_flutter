import 'package:appmoove_mobile_test/components/display_video.dart';
import 'package:appmoove_mobile_test/components/loading.dart';
import 'package:appmoove_mobile_test/model/movie.dart';
import 'package:appmoove_mobile_test/model/video.dart';
import 'package:appmoove_mobile_test/web/movies.dart';
import 'package:flutter/material.dart';

class MovieDisplay extends StatelessWidget {
  const MovieDisplay({Key? key, required this.movieId}) : super(key: key);

  final int movieId;

  @override
  Widget build(BuildContext context) {
    final Future<Video> futureVideo = getVideo(id: movieId);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder(
          future: getMovie(id: movieId),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Loading();
              case ConnectionState.waiting:
                return const Loading();
              case ConnectionState.active:
                return const Loading();
              case ConnectionState.done:
                final Movie movie = snapshot.data as Movie;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (var m in movie.genres)
                            Text(
                              m.name,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                        ],
                      ),
                      FutureBuilder(
                          future: futureVideo,
                          builder: (context, snapshot) {
                            switch (snapshot.connectionState) {
                              case ConnectionState.none:
                                return const Loading();
                              case ConnectionState.waiting:
                                return const Loading();
                              case ConnectionState.active:
                                return const Loading();
                              case ConnectionState.done:
                                final Video video = snapshot.data as Video;
                                return DisplayVideo(videoKey: video.key);
                            }
                          })
                    ],
                  ),
                );
            }
          }),
    );
  }
}
