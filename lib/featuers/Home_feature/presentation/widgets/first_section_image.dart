import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_task/core/utils/helper.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../generated/assets.dart';
import '../../domain/entities/movie_entity.dart';

class FirstSectionImage extends StatelessWidget {
  const FirstSectionImage({super.key, required this.theMovie});

  final MovieEntity theMovie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: theMovie.largeImage ?? "",
              width: double.infinity,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: AppColor.whiteColor,
                size: 30,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: InkWell(
                onTap: () {
                  Helper.lunchAnyUrl(theMovie.url ?? "");
                },
              child: Image.asset(
                Assets.imagesPlayButton,
              ),
            ),
          )
        ],
      ),
    );
  }
}
