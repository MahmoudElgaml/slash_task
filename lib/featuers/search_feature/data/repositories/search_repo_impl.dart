import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/core/erorr/failure.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';
import 'package:slash_task/featuers/search_feature/data/data_sources/search_remote_data_source.dart';
import 'package:slash_task/featuers/search_feature/domain/repositories/search_repo.dart';

import '../../../Home_feature/data/mapper/movie_mapper.dart';

@Injectable(as: SearchRepo)
class SearchRepoImpl implements SearchRepo {
  SearchRemoteDataSource searchRemoteDataSource;

  SearchRepoImpl(this.searchRemoteDataSource);

  @override
  Future<Either<Failure, List<MovieEntity>>> searchMovie(
      String searchWord) async {
    try {
      var result = await searchRemoteDataSource.getMoviesBySearch(searchWord);

      List<MovieEntity> movieEntity = result
          .map(
            (e) => MovieMapper.toMovieEntity(e),
          )
          .toList();

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
