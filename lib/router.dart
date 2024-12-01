import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_portfolio/domain/model/movie/movie_model.dart';
import 'package:movie_portfolio/presentation/ui/home/home_page.dart';
import 'package:movie_portfolio/presentation/ui/movie_detail/movie_detail_add_reply_page.dart';
import 'package:movie_portfolio/presentation/ui/movie_detail/movie_detail_page.dart';
import 'package:movie_portfolio/presentation/ui/my_page/my_page.dart';
import 'package:path/path.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: "/home",
    routes: [
      GoRoute(
          path: "/home",
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => const HomePage()),
      GoRoute(
          path: "/my",
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => const MyPage()),
      GoRoute(
          path: "/movieDetail",
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) {
            MovieModel data = state.extra as MovieModel;
            return MovieDetailPage(movieData: data);
          }),
      GoRoute(
          path: "/movieAddReply",
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) {
            MovieModel data = state.extra as MovieModel;
            return MovieDetailAddReplyPage(movieData: data);
          })
    ]);
