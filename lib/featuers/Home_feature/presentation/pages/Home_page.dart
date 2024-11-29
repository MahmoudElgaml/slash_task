import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';
import 'package:slash_task/core/services/rectangle_shimmer.dart';
import 'package:slash_task/core/utils/app_color.dart';
import 'package:slash_task/core/utils/app_string.dart';
import 'package:slash_task/core/utils/app_style.dart';
import 'package:slash_task/core/utils/component/custom_camapaign_textfiled.dart';
import 'package:slash_task/featuers/Home_feature/presentation/manager/home_cubit.dart';

import '../../../../generated/assets.dart';
import '../widgets/first_film_section.dart';
import '../widgets/seconed_film_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.blackColor,
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeGetMovieFailState) {
              return Center(
                child: Text(state.message),
              );
            } else if (state is HomeGetMovieSuccessState) {
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: FirstFilmSection(
                      firstMovieOfList: state.listOfMovie[0],
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: SecondFilmSection(
                      allMovie: state.listOfMovie,
                    ),
                  ),
                ],
              );
            } else {
              return const HomeLoadingWidget();
            }
          },
        ),
      ),
    );
  }
}

class HomeLoadingWidget extends StatelessWidget {
  const HomeLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[850]!,
      highlightColor: Colors.grey[600]!,
      child: Column(
        children: [
          const Skeleton(height: 400, width: double.infinity),
          const Gap(20),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const Skeleton(height: 200, width: 100),
                separatorBuilder: (context, index) => const Gap(10),
                itemCount: 20),
          )
        ],
      ),
    );
  }
}
