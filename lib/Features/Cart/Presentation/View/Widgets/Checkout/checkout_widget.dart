import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Shared%20Widgets/button.dart';
import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/Checkout/check_out_data.dart';
import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/Coupon%20Widgets/coupon_widget.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Space.instance.vertical24,
      const CuponWidget(),
      Space.instance.vertical24,
      const CheckoutData(),
      Space.instance.vertical18,
      const CheckoutData(),
      Space.instance.vertical18,
      const CheckoutData(),
      Space.instance.vertical18,
      AppButton(onPressed: () {}, label: 'Checkout', radius: 17.r),
      Space.instance.vertical12
    ]);
  }
}
