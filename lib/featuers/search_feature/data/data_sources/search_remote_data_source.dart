import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';


import '../../../../../core/api/end_points.dart';
import '../../../Home_feature/data/models/MovieModel.dart';

part 'search_remote_data_source.g.dart';
@Injectable()
@RestApi(baseUrl:EndPoints.baseUrl)
abstract class SearchRemoteDataSource {
  @factoryMethod
  factory SearchRemoteDataSource(Dio dio) = _SearchRemoteDataSource;

  @GET(EndPoints.getMoviesBySearch)
  Future<List<MovieModel>> getMoviesBySearch(@Path() String word);

}