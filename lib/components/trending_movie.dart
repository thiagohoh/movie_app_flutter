import 'package:appmoove_mobile_test/components/full_card.dart';
import 'package:appmoove_mobile_test/components/loading.dart';
import 'package:appmoove_mobile_test/model/result.dart';
import 'package:appmoove_mobile_test/pages/movie_detail.dart';
import 'package:appmoove_mobile_test/web/movies.dart';
import 'package:flutter/material.dart';

class TrendingMovie extends StatelessWidget {
  const TrendingMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getTopOneTrending(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const Loading();
          case ConnectionState.waiting:
            return const Loading();
          case ConnectionState.active:
            return const Loading();
          case ConnectionState.done:
            final Result trendingMovie = snapshot.data as Result;
            return FullCard(
              result: trendingMovie,
              onClick: () => {_movieDetailPage(context, trendingMovie)},
            );
        }
      },
    );
  }
}

void _movieDetailPage(BuildContext context, Result result) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => MovieDetail(result: result)));
}
