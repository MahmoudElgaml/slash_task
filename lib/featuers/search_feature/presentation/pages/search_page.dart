import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:slash_task/core/utils/app_style.dart';
import 'package:slash_task/core/utils/component/contanier_date.dart';
import 'package:slash_task/core/utils/component/gobal_container_rate.dart';
import 'package:slash_task/core/utils/constants.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';
import 'package:slash_task/featuers/search_feature/presentation/manager/search_cubit.dart';

import '../../../../core/utils/app_color.dart';

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
                  return const Center(child: CircularProgressIndicator());
                } else if (state is SearchFailState) {
                  return Center(child: Text(state.message));
                } else if (state is SearchSuccessState) {
                  return const SearchList();
                }
                return Center(
                    child: Text(
                  "Search for a movie",
                  style: AppStyle.style31Bold(context),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: AppColor.itemColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1 / 1.5,
            child: CachedNetworkImage(
              imageUrl: Const.ImageTest,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const Gap(10),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Star Wars",
                  style: AppStyle.style27Bold(context),
                ),
                const Gap(10),
                Row(
                  children: [
                    ContainerDate(theMovie: MovieEntity(date: "2021")),
                    const Gap(10),
                    GlobalContainerRate(theMovie: MovieEntity(averageRate: 5)),
                  ],
                ),
                const Gap(10),
                Expanded(
                  child: Text(
                    "The feature involves a dynamic search bar animation integrated into a responsive The feature involves a dynamic search bar animation integrated into a responsiveThe feature involves a dynamic search bar animation integrated into a responsiveThe feature involves a dynamic search bar animation integrated into a responsive",
                    style: AppStyle.style14Regular(context),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchList extends StatelessWidget {
  const SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const Gap(10),
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return const SearchItem();
        },
      ),
    );
  }
}
