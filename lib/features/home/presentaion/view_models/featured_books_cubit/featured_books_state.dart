part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();
  @override
  List<Object> get props => [];
}

class FeaturedBooksInitialState extends FeaturedBooksState {}
class FeaturedBooksLoadingState extends FeaturedBooksState {}
class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errorMassage;

  const FeaturedBooksFailureState(this.errorMassage);
}
class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<BookModel>books;

  const FeaturedBooksSuccessState(this.books);
}
