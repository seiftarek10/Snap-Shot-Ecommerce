import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Features/Category/Presentation/View/Widgets/categories_list.dart';
import 'package:snap_shot/Core/Shared%20Widgets/page_text_title.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                          Space.instance.topPage,
                          const PageTextTitle(title: 'Categories',)
                        ])),
                    const CategoriesList()
                  ]))),
    );
  }
}
