import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slash_task/featuers/Home_feature/domain/entities/movie_entity.dart';
import 'package:slash_task/featuers/search_feature/presentation/pages/search_page.dart';
import 'package:slash_task/featuers/search_feature/presentation/widgets/search_item.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key, required this.movies});

  final List<MovieEntity> movies;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const Gap(10),
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return SearchItem(
            movie: movies[index],
          );
        },
      ),
    );
  }
}