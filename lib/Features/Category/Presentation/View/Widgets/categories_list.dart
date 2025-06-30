import 'package:flutter/material.dart';
import 'package:snap_shot/Features/Category/Presentation/View/Widgets/category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.only(top: 24), child: CategoryCard());
      },
    );
  }
}
