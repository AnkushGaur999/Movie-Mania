part of 'movies_bloc.dart';

sealed class MoviesStates extends Equatable {
  const MoviesStates();

  @override
  List<Object?> get props => [];
}

final class MoviesInitial extends MoviesStates {}

final class MoviesLoading extends MoviesStates {}

final class MoviesLoaded extends MoviesStates {
  final List<Movie> movies;

  const MoviesLoaded(this.movies);

  @override
  List<Object?> get props => [movies];
}

final class MoviesError extends MoviesStates {
  final String error;

  const MoviesError(this.error);

  @override
  List<Object?> get props => [error];
}
