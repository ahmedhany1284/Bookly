part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();
  @override
  List<Object> get props => [];
}

class SimilarBooksInitialState extends SimilarBooksState {}
class SimilarBooksLoadingState extends SimilarBooksState {}
class SimilarBooksFailureState extends SimilarBooksState {
  final String errorMassage;

  const SimilarBooksFailureState(this.errorMassage);
}
class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel>books;

  const SimilarBooksSuccessState(this.books);
}
