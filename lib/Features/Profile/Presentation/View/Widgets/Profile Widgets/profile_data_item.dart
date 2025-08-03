import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class ProfileDataItem extends StatelessWidget {
  const ProfileDataItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            height: context.height * 0.06,
            child: Row(
              children: [
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[300]!, width: 2),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(6.h),
                      child: Icon(Icons.person_outline, size: 22.h),
                    ),
                  ),
                ),
                Space.instance.horizontal16,
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text('Account Details',
                            style: Fonts.instance.font16_500Black),
                      ),
                      Expanded(
                        child: Text('Edit your account details',
                            style: Fonts.instance.font14_500Black
                                .copyWith(color: AppColors.instance.grey)),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Icon(
                  Icons.arrow_forward_ios,
                  size: 16.h,
                  color: AppColors.instance.black,
                ))
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Divider(
            height: 20.h,
            color: AppColors.instance.grey,
          ),
        )
      ],
    );
  }
}
