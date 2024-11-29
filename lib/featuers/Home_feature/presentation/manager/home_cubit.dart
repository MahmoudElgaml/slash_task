import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';
import 'package:slash_task/featuers/Home_feature/domain/use_cases/get_all_movie_use_case.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  GetAllMovieUseCase getAllMovieUseCase;

  HomeCubit(this.getAllMovieUseCase) : super(HomeInitial());
  @override
  void emit(HomeState state) {
    if (!isClosed) {
      super.emit(state);
    }
  }
  getAllMovie() async {
    emit(HomeGetMovieLoadingState());
    var result = await getAllMovieUseCase();
    result.fold(
      (fail) {
        emit(HomeGetMovieFailState(fail.message));
      },
      (movies) {
        emit(HomeGetMovieSuccessState(movies));
      },
    );
  }
}
