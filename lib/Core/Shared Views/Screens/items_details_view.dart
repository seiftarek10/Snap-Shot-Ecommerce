import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Core/Page%20Layout/scrollable_page.dart';
import 'package:snap_shot/Core/Shared%20Views/Widgets/Itesm%20Details/color_widget.dart';
import 'package:snap_shot/Core/Shared%20Views/Widgets/Itesm%20Details/item_description.dart';
import 'package:snap_shot/Core/Shared%20Views/Widgets/Itesm%20Details/main_item_image.dart';
import 'package:snap_shot/Core/Shared%20Views/Widgets/Itesm%20Details/other_items_colors.dart';
import 'package:snap_shot/Core/Shared%20Views/Widgets/Itesm%20Details/size_widget.dart';
import 'package:snap_shot/Core/Shared%20Widgets/arrow_back_with_title.dart';
import 'package:snap_shot/Core/assets/assets.dart';

class ItemsDetailsView extends StatelessWidget {
  const ItemsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: AppPagePadding(
                child: AppScrollablePage(
                    child: Column(children: [
      const PageTitleWithArrowBackWidget(title: 'Item'),
      Space.instance.vertical18,
      SizedBox(
          height: context.height * 0.35,
          width: double.infinity,
          child: const ItemImage(
            itemImage: Assets.pngBlackWhiteSneaker,
          )),
      Space.instance.vertical12,
      SizedBox(
          height: context.height * 0.12, child: const OtherColorsItemsImage()),
      Space.instance.vertical18,
      const Description(
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
      Space.instance.vertical18,
      const Row(
        children: [
          Expanded(child: SizeWidget()),
          SizedBox(width: 16),
          Expanded(child: ColorWidget()),
        ],
      ),
      Space.instance.vertical24
    ])))));
  }
}
