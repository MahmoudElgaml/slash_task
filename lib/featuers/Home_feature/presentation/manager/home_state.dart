part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeGetMovieLoadingState extends HomeState {}
final class HomeGetMovieFailState extends HomeState {
  final String message;
  HomeGetMovieFailState(this.message);
}
final class HomeGetMovieSuccessState extends HomeState {
  final List<MovieEntity> movieEntity;
  HomeGetMovieSuccessState(this.movieEntity);

}


