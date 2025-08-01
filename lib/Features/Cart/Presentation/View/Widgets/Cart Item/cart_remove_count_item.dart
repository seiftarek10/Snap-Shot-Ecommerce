import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class CartRemoveOrCountItem extends StatelessWidget {
  const CartRemoveOrCountItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(flex: 6, child: removeButton()),
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1.sp, color: Colors.grey[300]!),
            ),
            child: Row(
              children: [
                Expanded(
                  child: _counterIcon(
                    Icons.remove,
                    () {},
                  ),
                ),
                Expanded(
                    child: Center(
                        child:
                            Text('1', style: Fonts.instance.font14_500Black))),
                Expanded(
                  child: _counterIcon(
                    Icons.add,
                    () {},
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  InkWell removeButton() {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(4.sp),
        child: Text('REMOVE', style: Fonts.instance.font12_500Grey),
      ),
    );
  }

  InkWell _counterIcon(IconData counterIcon, void Function()? onTap) {
    return InkWell(
      onTap: onTap,
      child: Icon(counterIcon, size: 18.sp, color: AppColors.instance.black),
    );
  }
}
