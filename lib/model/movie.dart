import 'package:appmoove_mobile_test/model/genres.dart';

class Movie {
  final bool adult;
  final String backdropPath;
  final int budget;
  final String homepage;
  final int id;
  final String imdbId;
  final List<Genres> genres;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final int revenue;
  final int runtime;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  Movie(
      {required this.adult,
      required this.backdropPath,
      required this.budget,
      required this.homepage,
      required this.id,
      required this.imdbId,
      required this.genres,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.revenue,
      required this.runtime,
      required this.status,
      required this.tagline,
      required this.title,
      required this.video,
      required this.voteAverage,
      required this.voteCount});

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        adult: json['adult'],
        backdropPath: json['backdrop_path'],
        budget: json['budget'],
        homepage: json['homepage'],
        id: json['id'],
        imdbId: json['imdb_id'],
        genres: json['genres'].map((e) => Genres.fromJson(e)),
        originalLanguage: json['original_language'],
        originalTitle: json['original_title'],
        overview: json['overview'],
        popularity: json['popularity'],
        posterPath: json['poster_path'],
        releaseDate: json['release_date'],
        revenue: json['revenue'],
        runtime: json['runtime'],
        status: json['status'],
        tagline: json['tagline'],
        title: json['title'],
        video: json['video'],
        voteAverage: json['vote_average'],
        voteCount: json['vote_count'],
      );
}
