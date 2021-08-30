import 'package:flutter/services.dart';

import 'movie.dart';
import 'movies_provider.dart';

class MoviesService {

  final MoviesProvider _provider;

  static const platform = MethodChannel('movies/battery');

  MoviesService(this._provider);

  Future<List<Movie>> loadMovies() {
    return _provider.getMovies()
        .then((movies) => movies.where(_hasHighRating).toList());
  }

  bool _hasHighRating(Movie movie) {
    return movie.imdbRating > 5;
  }

  Future<String> getBatteryLevel() async {
    try {
      final int result = await platform.invokeMethod("getBatteryLevel");
      return "Battery level: $result";
    } on PlatformException catch (exception) {
      return "Failed to get battery level ${exception.message}";
    }
  }

}