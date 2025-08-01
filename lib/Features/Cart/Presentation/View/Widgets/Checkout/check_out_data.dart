import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class CheckoutData extends StatelessWidget {
  const CheckoutData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'SubTotal',
              style: Fonts.instance.font18_700Black
                  .copyWith(color: AppColors.instance.grey),
            ),
            Text(
              r'$58.43',
              style: Fonts.instance.font18_700Black
                  .copyWith(color: AppColors.instance.grey),
            ),
          ],
        ),
        Space.instance.vertical8,
        DottedLine(
          direction: Axis.horizontal,
          lineLength: double.infinity,
          lineThickness: 2.0,
          dashLength: 15,
          dashColor: AppColors.instance.grey,
        )
      ],
    );
  }
}
