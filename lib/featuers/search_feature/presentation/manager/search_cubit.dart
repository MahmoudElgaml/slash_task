import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';
import 'package:slash_task/featuers/search_feature/domain/use_cases/search_use_case.dart';

import '../../../Home_feature/data/models/MovieModel.dart';

part 'search_state.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchUseCase searchUseCase;

  SearchCubit(this.searchUseCase) : super(SearchInitial());

  void searchMovie(String searchWord) async {
    emit(SearchLoadingState());
    final result = await searchUseCase.call(searchWord);
    result.fold(
      (fail) => emit(
        SearchFailState(fail.message),
      ),
      (success) => emit(
        SearchSuccessState(success),
      ),
    );
  }
}
