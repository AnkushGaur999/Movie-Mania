import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_mania/src/core/network/data_state.dart';
import 'package:movie_mania/src/feat/home/domain/entities/movie.dart';
import 'package:movie_mania/src/feat/home/domain/use_cases/get_movies_use_case.dart';

part 'movies_events.dart';

part 'movies_states.dart';

@injectable
class MoviesBloc extends Bloc<MoviesEvents, MoviesStates> {
  final GetMoviesUseCase _getMoviesUseCase;

  MoviesBloc({required this._getMoviesUseCase}) : super(MoviesInitial()) {
    on<GetMovies>(_onGetMovies);
    add(GetMovies());
  }

  Future<void> _onGetMovies(GetMovies event, Emitter<MoviesStates> emit) async {
    emit(MoviesLoading());
    final result = await _getMoviesUseCase.call();
    if (result is DataSuccess) {
      emit(MoviesLoaded(result.data!));
    } else {
      emit(MoviesError(result.error!));
    }
  }
}
