import 'package:bookly/core/utils/styles/icon_broken.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextField(
        decoration: InputDecoration(
          // enabledBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.white,),
          //   borderRadius:BorderRadius.circular(12,),
          // ),
            hintText: 'Search',
            suffixIcon: IconButton(
                onPressed: () {}, icon: Icon(IconBroken.Search))
        ),
      ),
    );
  }
}
