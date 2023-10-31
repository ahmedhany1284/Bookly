import 'package:bookly/core/utils/functions/launch_ulr.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffFFFFFF),
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ), text: 'Free',
            ),
          ),
          Expanded(
            child: CustomButton(
              onpressed: (){
                launchCustomURl(context, bookModel.volumeInfo.previewLink);
              },
              backgroundColor: const Color(0xffEF8262),
              textColor: const Color(0xffFFFFFF),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ), text: getText(bookModel),
            ),
          ),
        ],
      ),
    );
  }

String  getText(BookModel bookModel){
    if(bookModel.volumeInfo.previewLink==null){
      return 'Not Avaliable';
    }else{
      return 'Preview';
    }
  }
}
