import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Features/Home%20Page/Presentation/View/Widgets/Home%20Page%20Widgets/snapshop_title_word.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppPagePadding(
      child: Column(
        children: [
          SnapShotWordImage(),
        ],
      ),
    );
  }
}
