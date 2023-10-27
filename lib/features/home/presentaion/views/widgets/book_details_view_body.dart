import 'package:bookly/features/home/presentaion/views/widgets/custom_book_detailed_appbar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return  Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
        // vertical: 20.0,
      ),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*(65/width)),
            child: CustomBookImage(),
          ),
          Text('data'),
        ],
      ),
    );
  }
}
