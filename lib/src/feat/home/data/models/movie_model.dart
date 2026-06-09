import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_mania/src/feat/home/domain/entities/movie.dart';

part 'movie_model.freezed.dart';

part 'movie_model.g.dart';

@freezed
abstract class MovieModel with _$MovieModel implements Movie {

  @Implements<Movie>()
  const factory MovieModel({
    String? id,
    String? title,
    String? year,
    String? rated,
    String? released,
    String? runtime,
    String? genre,
    String? director,
    String? writer,
    String? actors,
    String? plot,
    String? language,
    String? country,
    String? awards,
    String? poster,
    String? imdbRating,
    String? imdbId,
    String? boxOffice,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, Object?> json) =>
      _$MovieModelFromJson(json);
}
