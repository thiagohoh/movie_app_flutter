import 'package:appmoove_mobile_test/model/result.dart';

class PopularMovies {
  final int page;
  final List<Result> results;
  final int totalResults;
  final int totalPages;

  PopularMovies(
      {required this.page,
      required this.results,
      required this.totalResults,
      required this.totalPages});

  factory PopularMovies.fromJson(Map<String, dynamic> json) => PopularMovies(
        page: json['page'],
        results:
            List<Result>.from(json['results'].map((e) => Result.fromJson(e))),
        totalResults: json['total_results'],
        totalPages: json['total_pages'],
      );
}
