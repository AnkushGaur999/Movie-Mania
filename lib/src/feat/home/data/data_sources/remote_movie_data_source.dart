import 'package:injectable/injectable.dart';
import 'package:movie_mania/src/core/network/client/network_client.dart';
import 'package:movie_mania/src/feat/home/data/models/movie_model.dart';

@injectable
class RemoteMovieDataSource {
  final NetworkClient _networkClient;

  RemoteMovieDataSource({required this._networkClient});

  Future<List<MovieModel>> getMovies() async {
    try {
      final response = await _networkClient.get("movies");

      final moviesListJson = response.data["data"] as List;
      return moviesListJson.map((e) => MovieModel.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
