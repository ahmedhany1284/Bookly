import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentaion/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentaion/views/book_details_view.dart';
import 'package:bookly/features/home/presentaion/views/home_view.dart';
import 'package:bookly/features/search/presentaion/views/search_view.dart';
import 'package:bookly/features/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kSplashView='/';
  static const kHomeView='/homeView';
  static const kBookDetails='/bookDetails';
  static const kSearchView='/searchview';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: kSplashView,
        builder: (BuildContext context, GoRouterState state) =>const SplashView(),
      ),

      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) =>const HomeView(),
      ),

      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
            create: (context) => SimilarBooksCubit(
              getIt.get<HomeRepo>(),
            ),
            child:  BookDetailsView(
              bookModel: state.extra as BookModel,
            )),
      ),

      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) =>const SearchView(),
      ),

    ],
  );
}