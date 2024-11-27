import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:slash_task/featuers/Home_feature/presentation/pages/Home_page.dart';
import 'package:slash_task/featuers/search_feature/presentation/pages/search_page.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeView());

  changeBody(int index){
    switch (index) {
      case 0:
        emit(HomeView());
        break;
      case 1:
        emit(SearchView());
        break;
      default:
    }

  }


}
