import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class SizeItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  const SizeItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: isActive ? AppColors.instance.black : Colors.transparent,
              shape: BoxShape.circle,
              border: isActive != true
                  ? null
                  : Border.all(color: AppColors.instance.grey, width: 1),
            ),
            child: Text(title,
                style: isActive
                    ? Fonts.instance.font16_500Black
                        .copyWith(color: AppColors.instance.white)
                    : Fonts.instance.font16_500Grey)));
  }
}
