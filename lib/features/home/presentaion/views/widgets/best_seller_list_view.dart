import 'package:bookly/core/widgets/Custom_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentaion/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          print(state.books.length);
          return ListView.builder(
            shrinkWrap: true,
            physics:  const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: BestSellerItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailureState) {
          return CustomErrorWidget(errorMassage: state.errorMassage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
