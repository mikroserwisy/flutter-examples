import 'dart:convert';
import '/model/movies_provider.dart';
import 'package:http/http.dart';
import 'movie.dart';
import 'movie_model.dart';

class RemoteMoviesProvider implements MoviesProvider{

  final String _uri;

  RemoteMoviesProvider(this._uri);

  Future<List<Movie>> getMovies() async {
    final response = await get(Uri.parse(_uri));
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return json.decode(response.body)
          .map<MovieModel>((entry) => MovieModel.fromJson(entry)).toList()
          .map<Movie>(_toMovie).toList();
    } else {
      throw Exception("Error getting movies: ${response.reasonPhrase}");
    }
  }

  Movie _toMovie(MovieModel model) {
    final rating = (double.tryParse(model.imdbRating) ?? 0.0).toInt();
    return Movie(model.title, rating, model.images[0], model.images, model.genre, model.year);
  }

}