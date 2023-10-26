import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_list_view_item.dart';
import 'package:bookly/features/home/presentaion/views/widgets/featured_list_view.dart';
import 'package:bookly/icon_broken.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Best Sellers',
            style: Styles.textStyle18,
          ),
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        24,
      ),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsData.testImage,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Text('data'),
                Text('data'),
              ],
            ),
            Row(
              children: [
                Text('data'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
