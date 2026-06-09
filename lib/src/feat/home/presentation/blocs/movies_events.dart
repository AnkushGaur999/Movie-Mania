part of 'movies_bloc.dart';

sealed class MoviesEvents extends Equatable {
  const MoviesEvents();

  @override
  List<Object?> get props => [];
}

final class GetMovies extends MoviesEvents {}
