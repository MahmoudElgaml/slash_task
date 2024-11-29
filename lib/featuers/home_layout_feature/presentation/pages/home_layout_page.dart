import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:slash_task/core/utils/app_color.dart';
import 'package:slash_task/featuers/home_layout_feature/presentation/manager/home_layout_cubit.dart';
import 'package:slash_task/featuers/search_feature/presentation/manager/search_cubit.dart';

import '../../../../core/service_locator/config.dart';
import '../../../Home_feature/presentation/widgets/first_film_section.dart';
import '../widgets/my_bottom_navi.dart';
import '../widgets/search_bar.dart';

class HomeLayoutPage extends StatelessWidget {
  const HomeLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeLayoutCubit>(
          create: (context) => HomeLayoutCubit(),
        ),
        BlocProvider(
          create: (context) => getIt<SearchCubit>(),
        ),
      ],
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
