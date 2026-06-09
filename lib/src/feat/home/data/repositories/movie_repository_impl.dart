import 'package:injectable/injectable.dart';
import 'package:movie_mania/src/core/network/data_state.dart';
import 'package:movie_mania/src/feat/home/data/data_sources/remote_movie_data_source.dart';
import 'package:movie_mania/src/feat/home/domain/entities/movie.dart';
import 'package:movie_mania/src/feat/home/domain/repositories/movie_repository.dart';

@Injectable(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final RemoteMovieDataSource _remoteMovieDataSource;

  MovieRepositoryImpl({required this._remoteMovieDataSource});

  @override
  Future<DataState<List<Movie>>> getMovies() async {
    try {
      final movies = await _remoteMovieDataSource.getMovies();
      return DataSuccess(movies);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }
}
