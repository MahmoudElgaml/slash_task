import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:slash_task/core/utils/app_color.dart';
import 'package:slash_task/core/utils/app_string.dart';
import 'package:slash_task/core/utils/app_style.dart';
import 'package:slash_task/core/utils/component/custom_camapaign_textfiled.dart';

import '../../../../generated/assets.dart';
import '../widgets/first_film_section.dart';
import '../widgets/seconed_film_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.blackColor,
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: FirstFilmSection(),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: SecondFilmSection(),
            ),
          ],
        ),
      ),
    );
  }
}
