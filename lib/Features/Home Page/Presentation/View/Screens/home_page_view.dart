import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Core/Widgets/search_icon.dart';
import 'package:snap_shot/Core/Widgets/text_form_filed.dart';
import 'package:snap_shot/Features/Home%20Page/Presentation/View/Widgets/Home%20Page%20Widgets/snapshop_title_word.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPagePadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SnapShotWordImage(),
          Space.instance.vertical36,
          const AppTextField(
            label: 'Search',
            prefixIcon: SearchIcon(),
          ),
        ],
      ),
    );
  }
}
