import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Core/assets/assets.dart';

class CartItemPhoto extends StatelessWidget {
  const CartItemPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: Image.asset(Assets.pngDarkGreySneaker, fit: BoxFit.fill),
    );
  }
}