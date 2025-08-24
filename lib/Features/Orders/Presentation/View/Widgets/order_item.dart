import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';
import 'package:snap_shot/Core/assets/assets.dart';
import 'package:snap_shot/Features/Orders/Presentation/View/Widgets/order_item_data.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(Assets.pngDarkGreySneaker)),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                    decoration: BoxDecoration(
                        // ignore: deprecated_member_use
                        color: AppColors.instance.white.withOpacity(0.7),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(12),
                        )),
                    child: Text('Delivered',
                        style: Fonts.instance.font12_500Grey
                            .copyWith(color: AppColors.instance.black))))
          ],
        )),
        Space.instance.horizontal16,
        const Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderItemData(
                  orderKey: 'Ordered On : ',
                  orderValue: '1/3/2026',
                ),
                OrderItemData(
                  orderKey: 'Order : ',
                  orderValue: 'shoes',
                ),
                OrderItemData(
                  orderKey: 'Quantity : ',
                  orderValue: '1',
                ),
                OrderItemData(
                  orderKey: 'Total : ',
                  orderValue: r'$ 20',
                ),
              ],
            ))
      ],
    );
  }
}
