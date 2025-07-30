import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snap_shot/Core/assets/assets.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.svgSearch,
      fit: BoxFit.scaleDown,
    );
  }
}
