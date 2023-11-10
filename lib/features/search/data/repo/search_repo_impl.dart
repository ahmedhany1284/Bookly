import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class SearchRepoImpl extends SearchRepo {
  final HomeRepo homeRepo;

  SearchRepoImpl(this.homeRepo);
  TextEditingController controller=TextEditingController();

  @override
  Future<Either<Failure, List<BookModel>>> searchBook(String name) async {
    try {
      var result = await homeRepo.fetchFeaturedBooks();
      return result.fold(
        (failure) {
          print('Error: $failure');
          return left(failure);
        },
        (books) {
          List<BookModel> filteredBooks = books
              .where((book) => book.volumeInfo.title!
                  .toLowerCase()
                  .contains(name.toLowerCase()))
              .toList();
          return right(filteredBooks);
        },
      );
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
