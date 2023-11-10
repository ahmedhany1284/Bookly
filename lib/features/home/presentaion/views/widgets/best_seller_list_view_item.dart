import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetails,
          extra: bookModel,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: KAppPadding,
        ),
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CustomBookImage(
                imageURL: bookModel.volumeInfo.imageLinks?.thumbnail ??
                    bookModel.volumeInfo.imageLinks?.smallThumbnail ??
                    '',
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20.copyWith(
                          fontFamily: kGtSectraFine,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14.copyWith(
                        color: KGreyText,
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      children: [
                        Text(
                          '19.19 \$ ',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        BookRating(
                          rating: bookModel.volumeInfo.averageRating ?? 0,
                          count: bookModel.volumeInfo.ratingsCount ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
