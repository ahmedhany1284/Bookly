import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/Custom_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentaion/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarsBookListView extends StatelessWidget {
  const SimilarsBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return SizedBox(
            height: (MediaQuery.of(context).size.height * 0.175),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:  state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kBookDetails);
                    },
                    child: CustomBookImage(
                      borderRadius: BorderRadius.circular(8.0),
                      imageURL:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailureState) {
          return CustomErrorWidget(errorMassage: state.errorMassage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
