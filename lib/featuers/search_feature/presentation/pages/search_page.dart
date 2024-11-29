import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:slash_task/core/utils/app_style.dart';
import 'package:slash_task/core/utils/component/contanier_date.dart';
import 'package:slash_task/core/utils/component/gobal_container_rate.dart';
import 'package:slash_task/core/utils/constants.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';
import 'package:slash_task/featuers/search_feature/presentation/manager/search_cubit.dart';

import '../../../../core/utils/app_color.dart';
import '../widgets/search_list.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state is SearchLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is SearchFailState) {
                  return Center(child: Text(state.message));
                } else if (state is SearchSuccessState) {
                  return SearchList(
                    movies: state.movies,
                  );
                }
                return Center(
                    child: Text(
                  "Search for a movie",
                  style: AppStyle.style31Bold(context),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}


