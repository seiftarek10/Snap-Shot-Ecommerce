import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Space {
  Space._();

  static Space instance = Space._();

  final SizedBox vertical8 = SizedBox(height: 8.sp);
  final SizedBox topPage = SizedBox(height: 24.sp);
  final SizedBox vertical12 = SizedBox(height: 12.sp);
  final SizedBox vertical18 = SizedBox(height: 18.sp);
  final SizedBox vertical24 = SizedBox(height: 24.sp);
  final SizedBox vertical36 = SizedBox(height: 36.sp);
  final SizedBox vertical50 = SizedBox(height: 50.sp);
  final SizedBox horizintal8 = SizedBox(width: 8.sp);
  final SizedBox horizintal16 = SizedBox(width: 16.sp);
  final SizedBox horizintal24 = SizedBox(width: 24.sp);
}
