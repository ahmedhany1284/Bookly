import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffFFFFFF),
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ), text: '19.99\$',
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffEF8262),
              textColor: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ), text: 'free Preview',
            ),
          ),
        ],
      ),
    );
  }
}
