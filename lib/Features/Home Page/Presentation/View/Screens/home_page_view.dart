import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Features/Home%20Page/Presentation/View/Widgets/Home%20Page%20Widgets/categories_list.dart';
import 'package:snap_shot/Features/Home%20Page/Presentation/View/Widgets/Home%20Page%20Widgets/items_list.dart';
import 'package:snap_shot/Features/Home%20Page/Presentation/View/Widgets/Home%20Page%20Widgets/search_filed.dart';
import 'package:snap_shot/Features/Home%20Page/Presentation/View/Widgets/Home%20Page%20Widgets/snapshop_title_word.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPagePadding(
      vertical: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Space.instance.topPage,
          const SnapShotWordImage(),
          Space.instance.vertical36,
          const SearchField(),
          Space.instance.vertical36,
          const CategoriesList(),
          Space.instance.vertical24,
          const Expanded(
            child: ItemsList(),
          )
        ],
      ),
    );
  }
}
