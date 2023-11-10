import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentaion/views/widgets/box_action.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_detailed_appbar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSectionWithActionButton extends StatelessWidget {
  const BookDetailsSectionWithActionButton(
      {super.key, required this.bookModel});

  final BookModel bookModel;

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
                child: CustomBookImage(
                  imageURL: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              Text(
                bookModel.volumeInfo.title!,
                style: Styles.textStyle30,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                bookModel.volumeInfo.authors?[0] ?? '',
                style: Styles.textStyle18
                    .copyWith(color: KGreyText, fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 18.0,
              ),
              BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
                rating: bookModel.volumeInfo.averageRating ?? 0,
                count: bookModel.volumeInfo.ratingsCount ?? 0,
              ),
              const SizedBox(
                height: 37.0,
              ),
              BooksAction(
                bookModel: bookModel,
              ),
              const SizedBox(
                height: 37.0,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: bookModel.volumeInfo.publisher ?? '',
                      style: Styles.textStyle18.copyWith(
                        color: Colors.blue,
                      ),
                    ),
                     TextSpan(
                      text: bookModel.volumeInfo.publisher != null
                          ? ' Published this book At '
                          : 'Published At ',
                      style: Styles.textStyle18,
                    ),
                    TextSpan(
                      text: '${bookModel.volumeInfo.publishedDate}',
                      style: Styles.textStyle18.copyWith(
                        color: Colors.redAccent,
                      ),
                    ),
                    const TextSpan(
                      text: '.',
                      style: Styles.textStyle18,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Description :',
                  style:
                      Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Opacity(
                opacity: 0.8,
                child: Text(
                  bookModel.volumeInfo.description ?? '',
                  style: Styles.textStyle16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
