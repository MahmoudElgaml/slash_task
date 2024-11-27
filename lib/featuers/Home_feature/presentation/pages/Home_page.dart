import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:slash_task/core/utils/app_color.dart';
import 'package:slash_task/core/utils/app_string.dart';
import 'package:slash_task/core/utils/app_style.dart';
import 'package:slash_task/core/utils/component/custom_camapaign_textfiled.dart';

import '../../../../generated/assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.blackColor,
          body: Column(
            children: [
              FirstFilmSection(),
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 200,
                ),
              )
            ],
          )),
    );
  }
}

class FirstFilmSection extends StatelessWidget {
  const FirstFilmSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.images1064746,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBarHome(),
              Spacer(),
              ControlSection(),
              Gap(15)
            ],
          )
        ],
      ),
    );
  }
}

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21.0, right: 13),
            child: Image.asset(Assets.imagesSmallNetLogo),
          ),
          const Gap(10),
          Expanded(
            child: SizedBox(
              height: 40,
              child: CustomSearchTextFiled(
                hint: "Search",
                maxLine: 1,
                labelText: "",
                icon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: SvgPicture.asset(
                    Assets.imagesSearchIcon,
                    width: 15,
                    height: 15,
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          Image.asset(
            Assets.imagesUser,
            height: 40,
            width: 40,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}

class ControlSection extends StatelessWidget {
  const ControlSection({super.key});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     const InformationInControlSection(),
        const Gap(22),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.play_arrow_rounded,
                color: AppColor.blackColor,
                size: 30,
              ),
              const Gap(4),
              Text(
                AppString.playButton,
                style: AppStyle.style13Medium(context).copyWith(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
class InformationInControlSection extends StatelessWidget {
  const InformationInControlSection({super.key});
  static List<String> category = ["TV Shows", "Movies", "My List"];
  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Text(
          "Stranger Things",
          style: AppStyle.style31Bold(context),
        ),
        const Gap(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: category
              .map(
                (e) => Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  width: 3.62,
                  height: 3.62,
                  decoration: const ShapeDecoration(
                    color: AppColor.yellowColor,
                    shape: OvalBorder(),
                  ),
                ),
                const Gap(7),
                Text(
                  e,
                  style: AppStyle.style11Medium(context),
                )
              ],
            ),
          )
              .toList(),
        ),
      ],
    );
  }
}

