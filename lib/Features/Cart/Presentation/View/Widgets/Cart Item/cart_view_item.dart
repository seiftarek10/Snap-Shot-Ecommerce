import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/Cart%20Item/cart_item_data.dart';
import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/Cart%20Item/cart_item_photo.dart';
import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/Cart%20Item/cart_remove_count_item.dart';

class CartViewItem extends StatelessWidget {
  const CartViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.height * 0.12,
        child: Row(children: [
          const Expanded(flex: 5, child: CartItemPhoto()),
          Space.instance.horizontal16,
          const Expanded(flex: 6, child: CartItemData()),
          const Expanded(flex: 4, child: CartRemoveOrCountItem())
        ]));
  }
}
