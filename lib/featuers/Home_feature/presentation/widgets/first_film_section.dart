import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_task/config/routes/routes.dart';
import 'package:slash_task/core/utils/helper.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';
import 'package:slash_task/featuers/home_layout_feature/presentation/manager/home_layout_cubit.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../core/utils/component/custom_camapaign_textfiled.dart';
import '../../../../generated/assets.dart';

class FirstFilmSection extends StatelessWidget {
  const FirstFilmSection({super.key, required this.firstMovieOfList});

  final MovieEntity firstMovieOfList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .5,
      child: Stack(
        children: [
          Positioned.fill(
            child: InkWell(
              onTap: () {
                context.push(
                  AppRoute.movieDetail,
                  extra: firstMovieOfList,
                );
              },
              child: CachedNetworkImage(
                imageUrl: firstMovieOfList.largeImage ?? "",
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              ControlSection(
                firstMovieOfList: firstMovieOfList,
              ),
              const Gap(15),
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
                onTap: () {
                  context.read<HomeLayoutCubit>().changeBody(1);
                },
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
  const ControlSection({super.key, required this.firstMovieOfList});

  final MovieEntity firstMovieOfList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InformationInControlSection(
          firstMovieOfList: firstMovieOfList,
        ),
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
              InkWell(
                onTap: () {
                  Helper.lunchAnyUrl(firstMovieOfList.url ?? "");
                },
                child: Text(
                  AppString.playButton,
                  style: AppStyle.style13Medium(context).copyWith(
                    fontWeight: FontWeight.bold,
                  ),
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
  const InformationInControlSection(
      {super.key, required this.firstMovieOfList});

  final MovieEntity firstMovieOfList;
  static List<String> category = ["TV Shows", "Movies", "My List"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          firstMovieOfList.title ?? "",
          style: AppStyle.style31Bold(context),
        ),
        const Gap(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: firstMovieOfList.genre!
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
                      e ?? "",
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
