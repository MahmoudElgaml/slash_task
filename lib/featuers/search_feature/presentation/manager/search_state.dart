part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}
final class SearchLoadingState extends SearchState {}
final class SearchFailState extends SearchState {
  final String message;

  SearchFailState(this.message);
}
final class SearchSuccessState extends SearchState {
  final List<MovieEntity> movies;

  SearchSuccessState(this.movies);
}

