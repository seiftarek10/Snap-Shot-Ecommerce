import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Core/Style/fonts.dart';
import 'package:snap_shot/Features/Profile/Presentation/View/Widgets/Profile%20Widgets/profile_data_item.dart';
import 'package:snap_shot/Features/Profile/Presentation/View/Widgets/Profile%20Widgets/profile_title.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: AppPagePadding(
                child: Column(
      children: [
        const ProfileTitle(),
        Space.instance.vertical36,
        const ProfileDataItem(),
        Space.instance.vertical18,
        const ProfileDataItem(),
        Space.instance.vertical18,
        const ProfileDataItem(),
        Space.instance.vertical18,
        const ProfileDataItem(),
        Spacer(),
        TextButton(
            onPressed: () {},
            child: Text(
              'Logout',
              style: Fonts.instance.font18_700Black.copyWith(color: Colors.red),
            ))
      ],
    ))));
  }
}
