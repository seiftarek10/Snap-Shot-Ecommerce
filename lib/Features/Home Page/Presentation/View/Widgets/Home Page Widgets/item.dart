import 'package:flutter/material.dart';
import 'package:snap_shot/Core/assets/assets.dart';
import 'package:snap_shot/Features/Home%20Page/Presentation/View/Widgets/Home%20Page%20Widgets/clicable_icon.dart';
import 'package:snap_shot/Features/Home%20Page/Presentation/View/Widgets/Home%20Page%20Widgets/item_data.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: Image.asset(
          Assets.pngDarkGreySneaker,
          fit: BoxFit.fill,
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
