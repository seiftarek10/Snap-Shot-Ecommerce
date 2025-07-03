import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Shared%20Views/Widgets/Itesm%20Details/main_item_image.dart';
import 'package:snap_shot/Core/assets/assets.dart';

class OtherColorsItemsImage extends StatelessWidget {
  const OtherColorsItemsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(3, (index) {
      if (index == 0) {
        return const Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 4),
            child: ItemImage(
              itemImage: Assets.pngBlueSneaker,
            ),
          ),
        );
      }
      if (index == 1) {
        return const Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 4, left: 4),
            child: ItemImage(
              itemImage: Assets.pngBrownSneaker,
            ),
          ),
        );
      }

      return const Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 4),
          child: ItemImage(
            itemImage: Assets.pngDarkGreySneaker,
          ),
        ),
      );
    }));
  }
}
