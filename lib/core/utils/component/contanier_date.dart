import 'package:flutter/material.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';

import '../app_color.dart';
import '../app_style.dart';

class ContainerDate extends StatelessWidget {
  const ContainerDate ({super.key,required this.theMovie});
final MovieEntity theMovie;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.grayColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          theMovie.date ?? "NO DATE",
          style: AppStyle.style14Regular(context),
        ),
      ),
    );
  }
}
