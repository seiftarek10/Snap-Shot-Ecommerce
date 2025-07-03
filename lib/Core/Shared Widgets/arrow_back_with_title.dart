import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class PageTitleWithArrowBackWidget extends StatelessWidget {
  const PageTitleWithArrowBackWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          bottom: 10.sp,
          child: GestureDetector(
              onTap: () {
                GoRouter.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_ios_new_outlined, size: 32)),
        ),
        Center(
          child: Text(
            title,
            style: Fonts.instance.font32BoldWhite.copyWith(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
