import 'package:bookly/core/utils/styles/icon_broken.dart';
import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:bookly/features/search/presentaion/view_models/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.searchRepo});

  final SearchRepo searchRepo;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController controller ;
  void initState() {
    super.initState();
    controller = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            onChanged: (value){
              BlocProvider.of<SearchCubit>(context).searchBook(
                controller.text,
              );
              controller=controller;
            },
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: IconButton(
                onPressed: () {
                  BlocProvider.of<SearchCubit>(context).searchBook(
                    controller.text,
                  );

                },
                icon: const Icon(
                  IconBroken.Search,
                ),
              ),
            ),

          ),
        );
      },
    );
  }
}
