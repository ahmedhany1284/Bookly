import 'package:bookly/features/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/constants.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimaryColor,
      ),
      home: const SplashView(),
    );
  }
}

