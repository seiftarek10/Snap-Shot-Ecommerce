import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({
    super.key,
    required this.itemImage,
  });

  final String itemImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        itemImage,
        fit: BoxFit.fill,
      ),
    );
  }
}
