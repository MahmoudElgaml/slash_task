import 'package:flutter/material.dart';

import '../../../featuers/Home_feature/domain/entities/movie_entity.dart';
import '../app_color.dart';
import '../app_style.dart';

class GlobalContainerRate extends StatelessWidget {
  const GlobalContainerRate({super.key,required this.theMovie});
final MovieEntity theMovie;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        const Icon(
          Icons.star,
          color: AppColor.yellowColor,
        ),
        Text(
          theMovie.averageRate?.toString()?? "no rate",
          style: AppStyle.style14Regular(context),
        ),
      ],
    );
  }
}
