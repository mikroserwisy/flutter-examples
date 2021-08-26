import 'movie.dart';

abstract class MoviesProvider {

  Future<List<Movie>> getMovies();

}