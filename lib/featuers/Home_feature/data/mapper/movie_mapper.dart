import 'package:slash_task/featuers/Home_feature/data/models/MovieModel.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';

class MovieMapper {
  static MovieEntity toMovieEntity(MovieModel movieModel) {
    return MovieEntity(
      title: movieModel.show?.name ?? "none",
      largeImage: movieModel.show?.image?.original ?? "none",
      smallImage: movieModel.show?.image?.medium ?? "none",
      averageRate: movieModel.show?.rating?.average,
      summary: movieModel.show?.summary ?? "none",
      genre: movieModel.show?.genres,
    );
  }
}
