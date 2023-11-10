import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {

  SearchCubit( this.searchRepo, ) : super(SearchInitial());

  final SearchRepo searchRepo;


  Future<void> searchBook(String name) async {
    emit(SearchInitial());
    var data = await searchRepo.searchBook(name);

    data.fold((failure) {
      emit(SearchFailure(failure.errorMassage));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }

}
