import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.price,
  });

  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(r'$' '$price', style: Fonts.instance.font26BoldBlack),
      Row(children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.remove, size: 28)),
        Text('3', style: Fonts.instance.font26BoldBlack),
        IconButton(onPressed: () {}, icon: const Icon(Icons.add, size: 28))
      ])
    ]);
  }
}
