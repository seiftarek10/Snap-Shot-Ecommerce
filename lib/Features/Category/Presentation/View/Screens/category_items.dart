import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Core/Widgets/arrow_back_with_title.dart';

class CategoryItemsView extends StatelessWidget {
  const CategoryItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppPagePadding(
          vertical: 0,
          child: Column(
            children: [
              Space.instance.topPage,
              const PageTitleWithArrowBackWidget()
            ],
          ),
        ),
      ),
    );
  }
}
