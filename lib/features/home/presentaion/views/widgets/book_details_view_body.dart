import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentaion/views/widgets/box_action.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_detailed_appbar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  // vertical: 20.0,
                ),
                child: Column(
                  children: [
                    const CustomBookDetailsAppBar(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * (80 / width)),
                      child: const CustomBookImage(),
                    ),
                    const SizedBox(
                      height: 43,
                    ),
                    const Text(
                      'The Jungle Book',
                      style: Styles.textStyle30,
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      'Rudyard kipling',
                      style: Styles.textStyle18
                          .copyWith(color: KGreyText, fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    const BookRating(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    const SizedBox(
                      height: 37.0,
                    ),
                    const BooksAction(),
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 50.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You Can Also Like',
                    style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const SimilarsBookListView(),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ],

    );
  }
}


