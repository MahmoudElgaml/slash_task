// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../featuers/Home_feature/data/data_sources/remote_data_source/home_remote_data_source.dart'
    as _i364;
import '../../featuers/Home_feature/data/repositories/home_repo_impl.dart'
    as _i457;
import '../../featuers/Home_feature/domain/repositories/home_repo.dart'
    as _i335;
import '../../featuers/Home_feature/domain/use_cases/get_all_movie_use_case.dart'
    as _i323;
import '../api/dio_factory.dart' as _i1008;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioFactory = _$DioFactory();
    gh.singleton<_i361.Dio>(() => dioFactory.getDio());
    gh.factory<_i364.HomeRemoteDataSource>(
        () => _i364.HomeRemoteDataSource(gh<_i361.Dio>()));
    gh.factory<_i335.HomeRepo>(
        () => _i457.HomeRepoImpl(gh<_i364.HomeRemoteDataSource>()));
    gh.factory<_i323.GetAllMovieUseCase>(
        () => _i323.GetAllMovieUseCase(gh<_i335.HomeRepo>()));
    return this;
  }
}

class _$DioFactory extends _i1008.DioFactory {}
