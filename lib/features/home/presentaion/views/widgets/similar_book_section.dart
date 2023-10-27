import 'package:bookly/core/utils/styles/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You Can Also Like',
              style: Styles.textStyle14
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        const SimilarsBookListView(),
      ],
    );
  }
}