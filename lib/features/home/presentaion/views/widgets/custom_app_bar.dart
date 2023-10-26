import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/icon_broken.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 40,
        bottom: 30.0,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconBroken.Search,
            ),
          ),
        ],
      ),
    );
  }
}