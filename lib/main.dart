import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/features/home/presentaion/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentaion/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/search/data/repo/search_repo_impl.dart';
import 'package:bookly/features/search/presentaion/view_models/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constants.dart';

void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImp>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImp>(),
          )..fetchNewestBooks(),
        ),
        BlocProvider(
          create: (context) => SearchCubit(
            getIt.get<SearchRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
