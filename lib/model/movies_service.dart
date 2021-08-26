import 'movie.dart';
import 'movies_provider.dart';

class MoviesService {

  final MoviesProvider _provider;

  MoviesService(this._provider);

  Future<List<Movie>> loadMovies() {
    return _provider.getMovies()
        .then((movies) => movies.where(_hasHighRating).toList());
  }

  bool _hasHighRating(Movie movie) {
    return movie.imdbRating > 5;
  }

}