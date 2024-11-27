import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash_task/core/utils/app_color.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../../../../generated/assets.dart';

class HomeLayoutPage extends StatelessWidget {
  const HomeLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      appBar: AppBar(
        title: const Text("Home Layoutt"),
      ),
      bottomNavigationBar: const MyBottomNavi(),
    );
  }
}

class MyBottomNavi extends StatefulWidget {
  const MyBottomNavi({super.key});

  @override
  State<MyBottomNavi> createState() => _MyBottomNaviState();
}

class _MyBottomNaviState extends State<MyBottomNavi> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return StylishBottomBar(
      hasNotch: true,
      currentIndex: selectedIndex,
      onTap: (value) {
        setState(() {
          selectedIndex = value;
        });
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
  }
}
