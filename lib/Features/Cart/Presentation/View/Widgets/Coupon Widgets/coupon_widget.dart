import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/Coupon%20Widgets/coupon_button.dart';
import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/Coupon%20Widgets/coupon_text_field.dart';

class CuponWidget extends StatelessWidget {
  const CuponWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.h,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 5, child: CuoponTextField()),
          Expanded(flex: 2, child: CouponButton()),
        ],
      ),
    );
  }
}
