
import 'package:movie_mania/src/core/network/data_state.dart';
import 'package:movie_mania/src/feat/home/domain/entities/movie.dart';

abstract class MovieRepository {

  Future<DataState<List<Movie>>> getMovies();
}