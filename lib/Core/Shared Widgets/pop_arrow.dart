import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopArrow extends StatelessWidget {
  const PopArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.pop();
      },
      padding: const EdgeInsets.only(top: 10, right: 15),
      icon: const Icon(
        Icons.arrow_back,
        size: 32,
      ),
    );
  }
}
