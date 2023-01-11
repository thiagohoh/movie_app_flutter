import 'package:appmoove_mobile_test/components/loading.dart';
import 'package:appmoove_mobile_test/components/small_movie_display.dart';
import 'package:appmoove_mobile_test/constants/constants.dart';
import 'package:appmoove_mobile_test/model/popular_movies.dart';
import 'package:appmoove_mobile_test/model/result.dart';
import 'package:appmoove_mobile_test/pages/movie_detail.dart';
import 'package:appmoove_mobile_test/web/movies.dart';
import 'package:flutter/material.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  final ScrollController _scrollController = ScrollController();
  late Future<PopularMovies> futureMoviesList;

  List<Result> movieList = List.empty(growable: true);
  bool loading = false;
  int currentPage = 1;
  bool allLoaded = false;

  @override
  void initState() {
    super.initState();
    futureMoviesList = getPopularMovies();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent &&
          !allLoaded) {
        setState(() {
          currentPage++;
          futureMoviesList = getPopularMovies(page: currentPage);
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder(
          future: futureMoviesList,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Loading();
              case ConnectionState.waiting:
                return const Loading();
              case ConnectionState.active:
                return const Loading();
              case ConnectionState.done:
                final PopularMovies popularMovies =
                    snapshot.data as PopularMovies;
                movieList.addAll(popularMovies.results);
                return SizedBox(
                  height: 500,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 340,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      controller: _scrollController,
                      itemCount: movieList.length,
                      itemBuilder: (context, index) {
                        return SmallMovieDisplay(
                          title: movieList[index].title,
                          image: Image.network(
                              "${Constants.baseImageUrl}${Constants.imageOriginalEndpoint}${movieList[index].posterPath}"),
                          onClick: () =>
                              {_movieDetailPage(context, movieList[index])},
                        );
                      }),
                );
            }
          }),
    );
  }
}

void _movieDetailPage(BuildContext context, Result result) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => MovieDetail(result: result)));
}
