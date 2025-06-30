import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/fonts.dart';
import 'package:snap_shot/Core/assets/assets.dart';
import 'package:snap_shot/Features/Home%20Page/Presentation/View/Widgets/Home%20Page%20Widgets/clicable_icon.dart';

class ItemData extends StatelessWidget {
  const ItemData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sneaker',
                style: Fonts.instance.font20White
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                r'$100',
                style: Fonts.instance.font20White
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const Expanded(
            child: ClicableIcon(isActive: false, icon: Assets.svgBag))
      ],
    );
  }
}
