import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.categoryName,
    required this.isSelected,
    required this.index,
    required this.currentIndex,
  });

  final String categoryName;
  final bool isSelected;
  final int index;
  final ValueChanged<int> currentIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        currentIndex(index);
      },
      child: Transform.scale(
        scale: isSelected ? 1.05 : 0.95,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.08),
          decoration: BoxDecoration(
              color: isSelected ? AppColors.instance.black : null,
              border: Border.all(
                width: 1,
                color: AppColors.instance.grey,
              ),
              borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Text(
              categoryName,
              style: isSelected
                  ? Fonts.instance.font14_500White
                  : Fonts.instance.font14_500Black,
            ),
          ),
        ),
      ),
    );
  }
}
