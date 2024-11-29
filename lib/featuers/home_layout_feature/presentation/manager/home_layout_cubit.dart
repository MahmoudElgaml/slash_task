import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:slash_task/featuers/Home_feature/presentation/manager/home_cubit.dart';
import 'package:slash_task/featuers/Home_feature/presentation/pages/Home_page.dart';
import 'package:slash_task/featuers/search_feature/presentation/pages/search_page.dart';

import '../../../../core/service_locator/config.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeView());
  bool isClicked = false;
  int selectedIndex = 0;

  changeBody(int index) {
    if (selectedIndex == index) return;
    switch (index) {
      case 0:
        {
          selectedIndex = 0;
          isClicked = false;
          emit(HomeView());
        }
        break;
      case 1:
        {
          selectedIndex = 1;
          isClicked = true;
          emit(SearchView());
        }
        break;
      default:
    }
  }
}
