import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static AppColors instance = AppColors._();

  Color get black => Colors.black;
  Color get white => Colors.white;
  Color get grey => Colors.grey;
  Color get lighterGrey => Colors.grey[500]!;
}
