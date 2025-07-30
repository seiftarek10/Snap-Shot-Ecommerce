import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Core/Style/colors.dart';

class ClicableIcon extends StatefulWidget {
  const ClicableIcon({
    super.key,
    required this.isActive,
    required this.icon,
  });

  final bool isActive;
  final String icon;
  @override
  State<ClicableIcon> createState() => _ClicableIconState();
}

class _ClicableIconState extends State<ClicableIcon> {
  late bool _isActive;
  bool _isTapped = false;

  @override
  void initState() {
    super.initState();
    _isActive = widget.isActive;
  }

  void _toggleFavorite() {
    setState(() {
      _isTapped = true;
      _isActive = !_isActive;
    });

    // Reset animation scale after a short delay
    Future.delayed(const Duration(milliseconds: 150), () {
      setState(() {
        _isTapped = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: _isTapped ? 1.03 : 0.95,
      duration: const Duration(milliseconds: 150),
      child: IconButton(
          onPressed: _toggleFavorite,
          icon: Container(
            padding: EdgeInsets.all(context.height * 0.01),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _isActive ? AppColors.instance.black : null,
            ),
            child: SvgPicture.asset(widget.icon,
                height: _isActive ? 20.sp : 25.sp,
                width: _isActive ? 20.sp : 25.sp,
                fit: BoxFit.fill,
                colorFilter: _isActive
                    ? ColorFilter.mode(
                        AppColors.instance.white,
                        BlendMode.srcIn,
                      )
                    : null),
          )),
    );
  }
}
