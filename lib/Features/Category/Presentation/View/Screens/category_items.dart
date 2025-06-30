import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Core/Shared%20List/Items/items_list.dart';
import 'package:snap_shot/Core/Shared%20Widgets/arrow_back_with_title.dart';

class CategoryItemsView extends StatelessWidget {
  const CategoryItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppPagePadding(
          vertical: 0,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Space.instance.topPage,
                    const PageTitleWithArrowBackWidget(
                      title: 'Sneakers',
                    ),
                    Space.instance.vertical18,
                  ],
                ),
              ),
              const ItemsList(isSliver: true),
            ],
          ),
        ),
      ),
    );
  }
}
