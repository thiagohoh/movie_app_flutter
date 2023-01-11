import 'dart:convert';

import 'package:appmoove_mobile_test/constants/constants.dart';
import 'package:appmoove_mobile_test/model/movie.dart';
import 'package:appmoove_mobile_test/model/popular_movies.dart';
import 'package:appmoove_mobile_test/model/result.dart';
import 'package:http/http.dart';

Future<Movie> getMovie({int id = 1}) async {
  final response = await get(Uri.parse(
      "${Constants.baseUrl}${Constants.movieEndpoint}$id${Constants.apiKeyParam}${Constants.apiKey}"));

  if (response.statusCode == 200) {
    final Map<String, dynamic> res = jsonDecode(response.body);
    final Movie movie = Movie.fromJson(res);

    return movie;
  } else {
    throw Future.error(Exception("Error on api call"));
  }
}

Future<PopularMovies> getPopularMovies({int page = 1}) async {
  final response = await get(Uri.parse(
      "${Constants.baseUrl}${Constants.popularMovieEndpoint}${Constants.apiKeyParam}${Constants.apiKey}&page=$page"));

  if (response.statusCode == 200) {
    final Map<String, dynamic> res = jsonDecode(response.body);

    final PopularMovies popMovies = PopularMovies.fromJson(res);
    return popMovies;
  } else {
    throw Future.error(Exception("Error on api call"));
  }
}

Future<Result> getTopOneTrending() async {
  final response = await get(Uri.parse(
      "${Constants.baseUrl}${Constants.trendingWeekEndpoint}${Constants.apiKeyParam}${Constants.apiKey}"));

  if (response.statusCode == 200) {
    final Map<String, dynamic> res = jsonDecode(response.body);
    final Result result = Result.fromJson(res['results'][0]);
    return result;
  } else {
    throw Future.error(Exception("Error on api call"));
  }
}
