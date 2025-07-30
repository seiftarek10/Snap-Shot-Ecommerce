import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Shared%20List/Items/item_card.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({
    super.key,
    this.isSliver,
  });

  final bool? isSliver;

  @override
  Widget build(BuildContext context) {
    return isSliver != null
        ? SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const ItemCard(),
              ),
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 2 / 3,
            ),
          )
        : GridView.builder(
            itemCount: 20,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                childAspectRatio: 2 / 3,
                mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const ItemCard(),
              );
            });
  }
}
