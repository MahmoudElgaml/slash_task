import 'package:slash_task/featuers/Home_feature/data/models/movieModel.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';

class MovieMapper {
  static MovieEntity toMovieEntity(Movies movieModel) {
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
