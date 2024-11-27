import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../generated/assets.dart';

class SecondFilmSection extends StatelessWidget {
  const SecondFilmSection({super.key});

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
              itemBuilder: (context, index) => const MovieSmallItem(),
              itemCount: 20,
            ),
          )
        ],
      ),
    );
  }
}

class MovieSmallItem extends StatelessWidget {
  const MovieSmallItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 114 / 180,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Image.network(
              "https://static.tvmaze.com/uploads/images/medium_portrait/425/1064746.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Image.asset(Assets.imagesPlayButton)
        ],
      ),
    );
  }
}