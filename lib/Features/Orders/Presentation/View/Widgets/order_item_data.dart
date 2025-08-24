
import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class OrderItemData extends StatelessWidget {
  const OrderItemData({
    super.key,
    required this.orderKey,
    required this.orderValue,
  });
  final String orderKey;
  final String orderValue;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: orderKey,
            style: Fonts.instance.font16_500Black,
            children: [
          TextSpan(text: orderValue, style: Fonts.instance.font16_500Grey)
        ]));
  }
}
