import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Core/Routing/route_path.dart';
import 'package:snap_shot/Core/assets/assets.dart';
import 'package:snap_shot/Core/Shared%20Widgets/clicable_icon.dart';
import 'package:snap_shot/Core/Shared%20List/Items/item_data.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: GestureDetector(
          onTap: () {
            context.appRouter.push(RoutePath.itemsDetailsView);
          },
          child: Image.asset(
            Assets.pngDarkGreySneaker,
            fit: BoxFit.fill,
          ),
        ),
      ),
      const Positioned(
          right: 0,
          child: ClicableIcon(
            icon: Assets.svgHeart,
            isActive: false,
          )),
      const Positioned(
        bottom: 10,
        left: 10,
        right: 5,
        child: ItemData(),
      )
    ]);
  }
}
