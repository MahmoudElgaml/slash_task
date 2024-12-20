import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slash_task/core/utils/component/contanier_date.dart';
import 'package:slash_task/core/utils/component/gobal_container_rate.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_style.dart';
import '../../domain/entities/movie_entity.dart';

class SeconedSectionMoreInformation extends StatelessWidget {
  const SeconedSectionMoreInformation({super.key, required this.theMovie});

  final MovieEntity theMovie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            theMovie.title ?? "",
            style: AppStyle.style31Bold(context),
          ),
          const Gap(10),
          Row(
            children: [
              ContainerDate(theMovie: theMovie),
              const Gap(10),
              GlobalContainerRate(theMovie: theMovie),
              const Gap(10),
              Text(
                "${theMovie.runTime?.toString() ?? "none"} min",
                style: AppStyle.style14Regular(context).copyWith(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Gap(10),
          Text(
            theMovie.summary?.substring(21) ?? "",
            style: AppStyle.style14Regular(context),
          ),
          const Gap(15),
          Row(
            children: theMovie.genre!
                .map(
                  (genre) => buildGenreItem(genre, context),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Padding buildGenreItem(String? genre, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: AppColor.grayColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            genre ?? "",
            style: AppStyle.style14Regular(context),
          ),
        ),
      ),
    );
  }
}
