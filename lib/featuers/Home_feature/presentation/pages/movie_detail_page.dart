import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_task/core/utils/app_color.dart';
import 'package:slash_task/core/utils/app_style.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';

import '../../../../generated/assets.dart';
import '../widgets/first_section_image.dart';
import '../widgets/seconed_section_information.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MovieEntity theMovie =
        GoRouterState.of(context).extra! as MovieEntity;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.blackColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FirstSectionImage(
                theMovie: theMovie,
              ),
              const Gap(10),
              SeconedSectionMoreInformation(
                theMovie: theMovie,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
