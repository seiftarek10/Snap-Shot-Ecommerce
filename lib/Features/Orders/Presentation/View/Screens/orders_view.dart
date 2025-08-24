import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Shared%20Widgets/page_text_title.dart';
import 'package:snap_shot/Features/Orders/Presentation/View/Widgets/orders_list.dart';
import 'package:snap_shot/Features/Orders/Presentation/View/Widgets/segmented_control.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
          child: Column(children: [
        Space.instance.topPage,
        const PageTextTitle(title: 'Orders'),
        Space.instance.vertical18,
        const Center(child: SegmentedControl()),
        Space.instance.vertical18,
      ])),
      const OrdersList()
    ]));
  }
}
