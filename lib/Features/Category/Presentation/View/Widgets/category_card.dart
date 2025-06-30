import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';
import 'package:snap_shot/Core/assets/assets.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColors.instance.grey,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                Assets.pngLogo,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Space.instance.horizintal16,
          Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tables', style: Fonts.instance.font18_700Black),
                  Text('12k Products',
                      style: Fonts.instance.font14_500White
                          .copyWith(color: AppColors.instance.grey)),
                ],
              )),
          Expanded(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.instance.black,
                size: 24.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
