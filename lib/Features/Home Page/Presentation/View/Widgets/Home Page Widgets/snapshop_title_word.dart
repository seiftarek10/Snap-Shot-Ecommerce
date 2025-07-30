import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Core/assets/assets.dart';

class SnapShotWordImage extends StatelessWidget {
  const SnapShotWordImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.pngSnapshotword,
      height: context.height * 0.04,
    );
  }
}
