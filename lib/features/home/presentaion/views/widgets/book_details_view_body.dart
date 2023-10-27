import 'package:bookly/features/home/presentaion/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentaion/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSectionWithActionButton(),
              Expanded(
                child: SizedBox(
                  height: 50.0,
                ),
              ),
              SimilarBooksSection(),
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




