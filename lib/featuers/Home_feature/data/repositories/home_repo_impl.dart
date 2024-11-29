import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/core/erorr/failure.dart';
import 'package:slash_task/featuers/Home_feature/data/data_sources/remote_data_source/home_remote_data_source.dart';
import 'package:slash_task/featuers/Home_feature/data/mapper/movie_mapper.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';
import 'package:slash_task/featuers/Home_feature/domain/repositories/home_repo.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(this.homeRemoteDataSource);

  @override
  Future<Either<Failure, List<MovieEntity>>> getAllMovies() async {
    try {
      var result = await homeRemoteDataSource.getAllMovie();
      List<MovieEntity> movieEntity = result.movies
              ?.map(
                (e) => MovieMapper.toMovieEntity(e),
              )
              .toList() ??
          [];
      return right(movieEntity);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
