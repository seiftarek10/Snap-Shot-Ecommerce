import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Core/Shared%20Widgets/page_text_title.dart';

import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/Checkout/checkout_widget.dart';

import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/cart_item_list_view.dart';
import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/clear_button.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: AppPagePadding(
                child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(children: [
          const PageTextTitle(title: 'Cart'),
          Space.instance.vertical18,
          const Align(alignment: Alignment.centerRight, child: ClearButton()),
        ])),
        const CartItemListView(),
        const SliverToBoxAdapter(
            child: CheckoutWidget()),
      ],
    ))));
  }
}
