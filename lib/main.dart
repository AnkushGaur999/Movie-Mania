import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_mania/src/core/config/di/service_locator.dart';
import 'package:movie_mania/src/feat/home/presentation/blocs/movies_bloc.dart';
import 'package:movie_mania/src/feat/home/presentation/views/home_screen.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt<MoviesBloc>())],
      child: CupertinoApp(
        title: 'Movie Mania',
        theme: CupertinoThemeData(
          brightness: Brightness.light, // Or Brightness.dark
          primaryColor: CupertinoColors.activeBlue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
