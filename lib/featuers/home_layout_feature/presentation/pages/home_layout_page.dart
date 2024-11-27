import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:slash_task/core/utils/app_color.dart';
import 'package:slash_task/featuers/home_layout_feature/presentation/manager/home_layout_cubit.dart';

import '../widgets/my_bottom_navi.dart';

class HomeLayoutPage extends StatelessWidget {
  const HomeLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit(),
      child: Scaffold(
        backgroundColor: AppColor.blackColor,
        appBar: AppBar(
          title: const Text("Home Layoutt"),
        ),
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
