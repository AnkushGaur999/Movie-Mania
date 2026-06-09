// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieModel {

 String? get id; String? get title; String? get year; String? get rated; String? get released; String? get runtime; String? get genre; String? get director; String? get writer; String? get actors; String? get plot; String? get language; String? get country; String? get awards; String? get poster; String? get imdbRating; String? get imdbId; String? get boxOffice;
/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieModelCopyWith<MovieModel> get copyWith => _$MovieModelCopyWithImpl<MovieModel>(this as MovieModel, _$identity);

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.director, director) || other.director == director)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.language, language) || other.language == language)&&(identical(other.country, country) || other.country == country)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.poster, poster) || other.poster == poster)&&(identical(other.imdbRating, imdbRating) || other.imdbRating == imdbRating)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.boxOffice, boxOffice) || other.boxOffice == boxOffice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,year,rated,released,runtime,genre,director,writer,actors,plot,language,country,awards,poster,imdbRating,imdbId,boxOffice);

@override
String toString() {
  return 'MovieModel(id: $id, title: $title, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, country: $country, awards: $awards, poster: $poster, imdbRating: $imdbRating, imdbId: $imdbId, boxOffice: $boxOffice)';
}


}

/// @nodoc
abstract mixin class $MovieModelCopyWith<$Res>  {
  factory $MovieModelCopyWith(MovieModel value, $Res Function(MovieModel) _then) = _$MovieModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, String? year, String? rated, String? released, String? runtime, String? genre, String? director, String? writer, String? actors, String? plot, String? language, String? country, String? awards, String? poster, String? imdbRating, String? imdbId, String? boxOffice
});




}
/// @nodoc
class _$MovieModelCopyWithImpl<$Res>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._self, this._then);

  final MovieModel _self;
  final $Res Function(MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? year = freezed,Object? rated = freezed,Object? released = freezed,Object? runtime = freezed,Object? genre = freezed,Object? director = freezed,Object? writer = freezed,Object? actors = freezed,Object? plot = freezed,Object? language = freezed,Object? country = freezed,Object? awards = freezed,Object? poster = freezed,Object? imdbRating = freezed,Object? imdbId = freezed,Object? boxOffice = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String?,rated: freezed == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,director: freezed == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String?,writer: freezed == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,plot: freezed == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,awards: freezed == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String?,poster: freezed == poster ? _self.poster : poster // ignore: cast_nullable_to_non_nullable
as String?,imdbRating: freezed == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,boxOffice: freezed == boxOffice ? _self.boxOffice : boxOffice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieModel].
extension MovieModelPatterns on MovieModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieModel value)  $default,){
final _that = this;
switch (_that) {
case _MovieModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieModel value)?  $default,){
final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title,  String? year,  String? rated,  String? released,  String? runtime,  String? genre,  String? director,  String? writer,  String? actors,  String? plot,  String? language,  String? country,  String? awards,  String? poster,  String? imdbRating,  String? imdbId,  String? boxOffice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that.id,_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.imdbRating,_that.imdbId,_that.boxOffice);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title,  String? year,  String? rated,  String? released,  String? runtime,  String? genre,  String? director,  String? writer,  String? actors,  String? plot,  String? language,  String? country,  String? awards,  String? poster,  String? imdbRating,  String? imdbId,  String? boxOffice)  $default,) {final _that = this;
switch (_that) {
case _MovieModel():
return $default(_that.id,_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.imdbRating,_that.imdbId,_that.boxOffice);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title,  String? year,  String? rated,  String? released,  String? runtime,  String? genre,  String? director,  String? writer,  String? actors,  String? plot,  String? language,  String? country,  String? awards,  String? poster,  String? imdbRating,  String? imdbId,  String? boxOffice)?  $default,) {final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that.id,_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.imdbRating,_that.imdbId,_that.boxOffice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieModel implements MovieModel, Movie {
  const _MovieModel({this.id, this.title, this.year, this.rated, this.released, this.runtime, this.genre, this.director, this.writer, this.actors, this.plot, this.language, this.country, this.awards, this.poster, this.imdbRating, this.imdbId, this.boxOffice});
  factory _MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);

@override final  String? id;
@override final  String? title;
@override final  String? year;
@override final  String? rated;
@override final  String? released;
@override final  String? runtime;
@override final  String? genre;
@override final  String? director;
@override final  String? writer;
@override final  String? actors;
@override final  String? plot;
@override final  String? language;
@override final  String? country;
@override final  String? awards;
@override final  String? poster;
@override final  String? imdbRating;
@override final  String? imdbId;
@override final  String? boxOffice;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieModelCopyWith<_MovieModel> get copyWith => __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.director, director) || other.director == director)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.language, language) || other.language == language)&&(identical(other.country, country) || other.country == country)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.poster, poster) || other.poster == poster)&&(identical(other.imdbRating, imdbRating) || other.imdbRating == imdbRating)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.boxOffice, boxOffice) || other.boxOffice == boxOffice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,year,rated,released,runtime,genre,director,writer,actors,plot,language,country,awards,poster,imdbRating,imdbId,boxOffice);

@override
String toString() {
  return 'MovieModel(id: $id, title: $title, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, country: $country, awards: $awards, poster: $poster, imdbRating: $imdbRating, imdbId: $imdbId, boxOffice: $boxOffice)';
}


}

/// @nodoc
abstract mixin class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(_MovieModel value, $Res Function(_MovieModel) _then) = __$MovieModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, String? year, String? rated, String? released, String? runtime, String? genre, String? director, String? writer, String? actors, String? plot, String? language, String? country, String? awards, String? poster, String? imdbRating, String? imdbId, String? boxOffice
});




}
/// @nodoc
class __$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(this._self, this._then);

  final _MovieModel _self;
  final $Res Function(_MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? year = freezed,Object? rated = freezed,Object? released = freezed,Object? runtime = freezed,Object? genre = freezed,Object? director = freezed,Object? writer = freezed,Object? actors = freezed,Object? plot = freezed,Object? language = freezed,Object? country = freezed,Object? awards = freezed,Object? poster = freezed,Object? imdbRating = freezed,Object? imdbId = freezed,Object? boxOffice = freezed,}) {
  return _then(_MovieModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String?,rated: freezed == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,director: freezed == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String?,writer: freezed == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,plot: freezed == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,awards: freezed == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String?,poster: freezed == poster ? _self.poster : poster // ignore: cast_nullable_to_non_nullable
as String?,imdbRating: freezed == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,boxOffice: freezed == boxOffice ? _self.boxOffice : boxOffice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
