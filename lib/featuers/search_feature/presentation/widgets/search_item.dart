import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_task/config/routes/routes.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../core/utils/component/contanier_date.dart';
import '../../../../core/utils/component/gobal_container_rate.dart';
import '../../../Home_feature/domain/entities/movie_entity.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key, required this.movie});

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoute.movieDetail,extra: movie);
      },
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: AppColor.itemColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: CachedNetworkImage(
                  imageUrl: movie.smallImage??"",
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            const Gap(10),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title??"No title",
                    style: AppStyle.style27Bold(context),
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      ContainerDate(theMovie: movie),
                      const Gap(10),
                      GlobalContainerRate(theMovie: movie),
                    ],
                  ),
                  const Gap(10),
                  Expanded(
                    child: Text(
                      movie.summary??"No summary",
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
      ),
    );
  }
}