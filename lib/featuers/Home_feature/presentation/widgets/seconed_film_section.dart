import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_task/config/routes/routes.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../generated/assets.dart';

class SecondFilmSection extends StatelessWidget {
  const SecondFilmSection({super.key, required this.allMovie});

  final List<MovieEntity> allMovie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(10),
          Text(
            AppString.allFilmTitle,
            style: AppStyle.style17Medium(context).copyWith(fontSize: 19),
          ),
          const Gap(13),
          SizedBox(
            height: 220,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) => MovieSmallItem(
                singleMovie: allMovie[index + 1],
              ),
              itemCount: allMovie.length - 1,
            ),
          )
        ],
      ),
    );
  }
}

class MovieSmallItem extends StatelessWidget {
  const MovieSmallItem({super.key, required this.singleMovie});

  final MovieEntity singleMovie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoute.movieDetail, extra: singleMovie);
      },
      child: AspectRatio(
        aspectRatio: 114 / 180,
        child: CachedNetworkImage(
          imageUrl: singleMovie.smallImage ?? "",
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            color: AppColor.whiteColor,
          ),
        ),
      ),
    );
  }
}
