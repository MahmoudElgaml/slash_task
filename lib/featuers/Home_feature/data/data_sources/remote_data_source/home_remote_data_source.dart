import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:slash_task/featuers/Home_feature/data/models/movieModel.dart';

import '../../../../../core/api/end_points.dart';
part 'home_remote_data_source.g.dart';
@Injectable()
@RestApi(baseUrl:EndPoints.baseUrl)
abstract class HomeRemoteDataSource {
  @factoryMethod
  factory HomeRemoteDataSource(Dio dio) = _HomeRemoteDataSource;

  @GET(EndPoints.getAllMovie)
 Future<MovieModel> getAllMovie();

}