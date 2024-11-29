import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

import 'package:slash_task/core/services/rectangle_shimmer.dart';
import 'package:slash_task/core/utils/app_style.dart';
import 'package:slash_task/core/utils/component/contanier_date.dart';
import 'package:slash_task/core/utils/component/gobal_container_rate.dart';
import 'package:slash_task/core/utils/constants.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';
import 'package:slash_task/featuers/search_feature/presentation/manager/search_cubit.dart';

import '../../../../core/utils/app_color.dart';
import '../widgets/search_list.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state is SearchLoadingState) {
                  return const SearchLoadingWidgets();
                } else if (state is SearchFailState) {
                  return Center(child: Text(state.message));
                } else if (state is SearchSuccessState) {
                  if (state.movies.isEmpty) {
                    return Expanded(
                      child: Center(
                        child: Text(
                          "No Movies Found",
                          style: AppStyle.style31Bold(context),
                        ),
                      ),
                    );
                  }
                  return SearchList(
                    movies: state.movies,
                  );
                }
                return Expanded(
                  child: Center(
                      child: Text(
                    "Search for a movie",
                    style: AppStyle.style31Bold(context),
                  )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchLoadingWidgets extends StatelessWidget {
  const SearchLoadingWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white,
      highlightColor: Colors.grey[400]!,
      child: ListView.separated(
        itemBuilder: (context, index) => const Skeleton(
          height: 90,
          width: double.infinity,
        ),
        separatorBuilder: (context, index) => const Gap(10),
        itemCount: 10,
      ),
    );
  }
}
