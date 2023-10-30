import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentaion/views/widgets/box_action.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_detailed_appbar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSectionWithActionButton extends StatelessWidget {
  const BookDetailsSectionWithActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
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
                child: const CustomBookImage(
                  imageURL: 'https://img.freepik.com/free-psd/world-forest-day-poster-template_23-2148899237.jpg',
                ),
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
      ],
    );
  }
}