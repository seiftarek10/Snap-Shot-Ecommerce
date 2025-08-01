import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/Cart%20Item/cart_view_item.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.only(top: 24.sp), child: const CartViewItem());
      },
    );
  }
}
