import 'package:injectable/injectable.dart';
import 'package:movie_mania/src/core/network/data_state.dart';
import 'package:movie_mania/src/feat/home/domain/entities/movie.dart';
import 'package:movie_mania/src/feat/home/domain/repositories/movie_repository.dart';

@injectable
class GetMoviesUseCase {
  final MovieRepository _movieRepository;

  GetMoviesUseCase({required this._movieRepository});

  Future<DataState<List<Movie>>> call() async {
    return await _movieRepository.getMovies();
  }
}
