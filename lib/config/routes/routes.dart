import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_task/featuers/splash_featuer/splash_view.dart';
import 'package:slash_task/main.dart';

class AppRoute {
  static const splash = '/';
  static const home= '/home';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const MyHomePage(title: "Home"),
      ),


    ],
  );
}
