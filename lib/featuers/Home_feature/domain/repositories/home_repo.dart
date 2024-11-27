import 'package:dartz/dartz.dart';
import 'package:slash_task/core/erorr/failure.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<MovieEntity>>> getAllMovies();



}