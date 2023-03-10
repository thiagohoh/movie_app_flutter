import 'package:flutter_dotenv/flutter_dotenv.dart';
class Constants {
  static final apiKey = dotenv.env['api_key'];
  static const baseUrl = "https://api.themoviedb.org/3/";
  static const movieEndpoint = "movie/";
  static const popularMovieEndpoint= "movie/popular";
  static const trendingDayEndpoint = "trending/movie/day";
  static const trendingWeekEndpoint = "trending/movie/week";
  static const apiKeyParam = "?api_key=";
  static const baseImageUrl = "https://image.tmdb.org/t/p/";
  static const imageOriginalEndpoint = "original";
  static const imageW500Endpoint = "w500";
  static const videos = "/videos";
  static const youtube = "https://www.youtube.com/watch?v=";
}