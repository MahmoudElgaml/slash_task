import 'package:dartz/dartz.dart';
import 'package:slash_task/core/erorr/failure.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';

abstract class SearchRepo {

  Future<Either<Failure, List<MovieEntity>>> searchMovie(String searchWord);
}
