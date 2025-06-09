import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Core/Style/colors.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    super.key,
    required this.icon,
    required this.isActive,
    required this.currentIndex,
    required this.index,
  });

  final String icon;
  final bool isActive;
  final ValueChanged<int> currentIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        currentIndex(index);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive == true
                ? AppColors.instance.black
                : Colors.transparent),
        child: Transform.scale(
          scale: isActive == true ? 0.95 : 1.05,
          child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
                isActive == true
                    ? AppColors.instance.white
                    : AppColors.instance.black,
                BlendMode.srcIn),
            width: 20,
            height: isActive == true
                ? context.height * 0.03
                : context.height * 0.035,
          ),
        ),
      ),
    );
  }
}
