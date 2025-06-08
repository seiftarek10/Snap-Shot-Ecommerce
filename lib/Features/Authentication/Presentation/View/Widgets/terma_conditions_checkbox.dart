import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class TermaConditionsCheckbox extends StatefulWidget {
  const TermaConditionsCheckbox({super.key});

  @override
  State<TermaConditionsCheckbox> createState() =>
      _TermaConditionsCheckboxState();
}

class _TermaConditionsCheckboxState extends State<TermaConditionsCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.2,
          child: Checkbox(
            value: isChecked,
            activeColor: AppColors.instance.black,
            side: const BorderSide(width: 2),
            onChanged: (bool? value) {
              setState(() {
                isChecked = value ?? false;
              });
            },
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'I Accepted',
            style: Fonts.instance.font14_500Black.copyWith(color: Colors.grey),
            children: [
              TextSpan(
                  text: ' Terms & Privacy Policy',
                  style: Fonts.instance.font14_500Black),
            ],
          ),
        )
      ],
    );
  }
}
