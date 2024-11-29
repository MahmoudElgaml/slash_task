import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/core/erorr/failure.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';
import 'package:slash_task/featuers/search_feature/domain/repositories/search_repo.dart';

@injectable
class SearchUseCase {
  SearchRepo searchRepo;

  SearchUseCase(this.searchRepo);
  Future<Either<Failure,List<MovieEntity>>>call(String searchWord) async {
    return await searchRepo.searchMovie(searchWord);

  }
}