import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_mania/src/feat/home/presentation/blocs/movies_bloc.dart';
import 'package:movie_mania/src/feat/home/presentation/views/movie_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: SizedBox(),
            middle: Text('Movies', style: TextStyle(fontSize: 24)),
            backgroundColor: CupertinoColors.systemBackground.withValues(
              alpha: 0.7,
            ),
          ),

          BlocBuilder<MoviesBloc, MoviesStates>(
            builder: (context, state) {
              if (state is MoviesLoading) {
                return SliverToBoxAdapter(
                  child: Center(child: CupertinoActivityIndicator()),
                );
              }
              if (state is MoviesLoaded) {
                return SliverList.builder(
                  itemCount: state.movies.length,
                  itemBuilder: (context, index) {
                    return CupertinoListTile(
                      title: Text(state.movies[index].title ?? ""),
                      subtitle: Text(state.movies[index].genre ?? ""),
                      leading: Image.network(state.movies[index].poster!),
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (_) =>
                                MovieDetailsScreen(movie: state.movies[index]),
                          ),
                        );
                      },
                    );
                  },
                );
              }

              return SliverToBoxAdapter(
                child: Center(child: Text("Something went wrong!")),
              );
            },
          ),
        ],
      ),
    );
  }
}
