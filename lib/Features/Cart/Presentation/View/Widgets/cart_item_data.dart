import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class CartItemData extends StatelessWidget {
  const CartItemData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(child: Text('Sneaker', style: Fonts.instance.font16_500Black)),
      Expanded(
        child: Text('Size: M , Color: Green',
            style: Fonts.instance.font12_500Grey.copyWith(fontSize: 13.sp)),
      ),
      Expanded(child: Text(r'$12.77', style: Fonts.instance.font18_700Black)),
    ]);
  }
}
