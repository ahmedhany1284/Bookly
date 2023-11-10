import 'package:bookly/core/utils/styles/styles.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/search/presentaion/view_models/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/presentaion/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key,});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              searchRepo: BlocProvider.of<SearchCubit>(context).searchRepo,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Result :',
                style: Styles.textStyle18,
              ),
            ),
            const Expanded(
              child: SearchResultListView(),
            ),
          ],
        );
      },
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          if(state.books.isEmpty){
            return Center(child: const Text('No Matching Books'));
          }
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                // child: BestSellerItem(),
                child: SearchItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SearchFailure) {
          return CustomErrorWidget(errorMassage: state.errorMassage);
        } else {
          return const CustomScrollView();
        }
      },
    );
  }
}

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return BestSellerItem(bookModel: bookModel);
  }
}
