import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: KAppPadding),
                child: Text(
                  'Best Sellers',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child:  BestSellerListView(),
        ),
      ],
    );
  }
}


