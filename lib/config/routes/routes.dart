import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_task/featuers/home_layout_feature/presentation/pages/home_layout_page.dart';
import 'package:slash_task/featuers/splash_featuer/splash_view.dart';
import 'package:slash_task/main.dart';

import '../../featuers/Home_feature/presentation/pages/movie_detail_page.dart';

class AppRoute {
  static const splash = '/';
  static const home = '/home';
  static const movieDetail = '/movieDetail';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeLayoutPage(),
      ),
      GoRoute(
          path: movieDetail,
          builder: (context, state) {
            return const MovieDetailPage();
          })
    ],
  );
}
