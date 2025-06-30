import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
    this.prefixIcon,
  });

  final String label;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.06,
      child: TextFormField(
        cursorColor: AppColors.instance.black,
        style: Fonts.instance.font14_500Black,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            enabledBorder: _textFieldBorder(AppColors.instance.grey),
            focusedBorder: _textFieldBorder(AppColors.instance.black),
            label: Text(label, style: Fonts.instance.font14_500Black),
            labelStyle: Fonts.instance.font22Black),
      ),
    );
  }

  OutlineInputBorder _textFieldBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(width: 1, color: color),
    );
  }
}
