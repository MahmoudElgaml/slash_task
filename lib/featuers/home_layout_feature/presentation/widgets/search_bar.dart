import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/component/custom_camapaign_textfiled.dart';
import '../../../../generated/assets.dart';
import '../../../search_feature/presentation/manager/search_cubit.dart';
import '../manager/home_layout_cubit.dart';

class AppBarHome extends StatefulWidget {
  const AppBarHome({super.key});

  @override
  State<AppBarHome> createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome> {
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
      builder: (context, state) {
        bool isClick = context.read<HomeLayoutCubit>().isClicked;
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              !isClick
                  ? Padding(
                padding: const EdgeInsets.only(left: 21.0, right: 13),
                child: Image.asset(Assets.imagesSmallNetLogo),
              )
                  : const SizedBox(),
              const Gap(10),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: CustomSearchTextFiled(
                    onTap: () {
                      context.read<HomeLayoutCubit>().changeBody(1);
                      context.read<HomeLayoutCubit>().isClicked = true;
                      setState(() {});
                    },
                    onChange: (value) {
                      context.read<SearchCubit>().searchMovie(value);
                    },

                    hint: "Search",
                    maxLine: 1,
                    labelText: "",
                    icon: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      child: SvgPicture.asset(
                        Assets.imagesSearchIcon,
                        width: 15,
                        height: 15,
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(10),
              !isClick
                  ? Image.asset(
                Assets.imagesUser,
                height: 40,
                width: 40,
                fit: BoxFit.fill,
              )
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}