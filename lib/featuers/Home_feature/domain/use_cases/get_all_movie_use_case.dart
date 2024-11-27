import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/core/erorr/failure.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';
import 'package:slash_task/featuers/Home_feature/domain/repositories/home_repo.dart';
@Injectable()
class GetAllMovieUseCase {
  final HomeRepo homeRepo;

  GetAllMovieUseCase(this.homeRepo);

  Future<Either<Failure,List<MovieEntity>>> call() {
    return homeRepo.getAllMovies();
  }
}