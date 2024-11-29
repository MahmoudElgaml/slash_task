import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:slash_task/core/utils/app_color.dart';
import 'package:slash_task/featuers/home_layout_feature/presentation/manager/home_layout_cubit.dart';

import '../../../Home_feature/presentation/widgets/first_film_section.dart';
import '../widgets/my_bottom_navi.dart';

class HomeLayoutPage extends StatelessWidget {
  const HomeLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.blackColor,
          titleSpacing: 0,
          title: const AppBarHome(),
        ),
        backgroundColor: AppColor.blackColor,

        body: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
          builder: (context, state) {
            return state.viewTap;
          },
        ),
        bottomNavigationBar: const MyBottomNavi(),
      ),
    );
  }
}
