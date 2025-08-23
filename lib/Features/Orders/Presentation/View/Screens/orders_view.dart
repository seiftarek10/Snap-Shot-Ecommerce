import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Core/Shared%20Widgets/page_text_title.dart';

import 'package:snap_shot/Features/Orders/Presentation/View/Widgets/order_item.dart';
import 'package:snap_shot/Features/Orders/Presentation/View/Widgets/segmented_control.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Space.instance.topPage,
          const PageTextTitle(title: 'Orders'),
          Space.instance.vertical18,
          const Center(child: SegmentedControl()),
          Space.instance.vertical18,
          SizedBox(
            height: context.height * 0.15,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: OrderItem(),
            ),
          )
        ],
      ),
    );
  }
}

