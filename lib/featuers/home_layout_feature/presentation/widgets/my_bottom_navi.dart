import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../generated/assets.dart';
import '../manager/home_layout_cubit.dart';

class MyBottomNavi extends StatefulWidget {
  const MyBottomNavi({super.key});

  @override
  State<MyBottomNavi> createState() => _MyBottomNaviState();
}

class _MyBottomNaviState extends State<MyBottomNavi> {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
      builder: (context, state) {
        return StylishBottomBar(
          hasNotch: true,
          currentIndex: context
              .read<HomeLayoutCubit>()
              .selectedIndex,
          onTap: (value) {
            context.read<HomeLayoutCubit>().changeBody(value);

          },
          backgroundColor: AppColor.blackColor,
          items: [
            BottomBarItem(
                icon: SvgPicture.asset(Assets.imagesHomeIcon),
                title: const Text("Home"),
                selectedColor: AppColor.yellowColor),
            BottomBarItem(
              icon: SvgPicture.asset(Assets.imagesSearchIcon),
              title: const Text("search"),
              selectedColor: AppColor.yellowColor,
            ),
          ],
          option: DotBarOptions(),
        );
      },
    );
  }
}