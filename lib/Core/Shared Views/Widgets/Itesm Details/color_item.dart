import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final Color color;
  final bool isActive;
  final VoidCallback onTap;

  const ColorItem({
    super.key,
    required this.color,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: isActive == false
                ? null
                : Border.all(
                    color: const Color.fromARGB(255, 36, 80, 102), width: 3),
          ),
        ));
  }
}
