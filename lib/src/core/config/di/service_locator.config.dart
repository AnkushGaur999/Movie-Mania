// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../../feat/home/data/data_sources/remote_movie_data_source.dart'
    as _i150;
import '../../../feat/home/data/repositories/movie_repository_impl.dart'
    as _i94;
import '../../../feat/home/domain/repositories/movie_repository.dart' as _i437;
import '../../../feat/home/domain/use_cases/get_movies_use_case.dart' as _i840;
import '../../../feat/home/presentation/blocs/movies_bloc.dart' as _i920;
import '../../network/client/network_client.dart' as _i616;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i616.NetworkClient>(() => _i616.NetworkClient());
    gh.factory<_i150.RemoteMovieDataSource>(
      () =>
          _i150.RemoteMovieDataSource(networkClient: gh<_i616.NetworkClient>()),
    );
    gh.factory<_i437.MovieRepository>(
      () => _i94.MovieRepositoryImpl(
        remoteMovieDataSource: gh<_i150.RemoteMovieDataSource>(),
      ),
    );
    gh.factory<_i840.GetMoviesUseCase>(
      () =>
          _i840.GetMoviesUseCase(movieRepository: gh<_i437.MovieRepository>()),
    );
    gh.factory<_i920.MoviesBloc>(
      () => _i920.MoviesBloc(getMoviesUseCase: gh<_i840.GetMoviesUseCase>()),
    );
    return this;
  }
}
