import 'package:bookly/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarsBookListView extends StatelessWidget {
  const SimilarsBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.height * 0.175),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(
              borderRadius: BorderRadius.circular(8.0),
              imageURL: 'https://img.freepik.com/free-psd/world-forest-day-poster-template_23-2148899237.jpg',
            ),
          );
        },
      ),
    );

  }
}