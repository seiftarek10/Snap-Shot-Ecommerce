import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class PageTitleWithArrowBackWidget extends StatelessWidget {
  const PageTitleWithArrowBackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: (const Icon(Icons.arrow_back_ios_new_outlined, size: 32))),
        ),
        Center(
          child: Text(
            'Sneakers',
            style: Fonts.instance.font32BoldWhite.copyWith(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
