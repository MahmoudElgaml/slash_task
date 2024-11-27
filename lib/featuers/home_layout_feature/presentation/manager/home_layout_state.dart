part of 'home_layout_cubit.dart';

@immutable
  abstract class HomeLayoutState {

  Widget get viewTap;
}

final class HomeView extends HomeLayoutState {
  @override
  // TODO: implement viewTap
  Widget get viewTap => const HomePage();

}
final class SearchView extends HomeLayoutState {
  @override
  // TODO: implement viewTap
  Widget get viewTap => const SearchPage();

}
