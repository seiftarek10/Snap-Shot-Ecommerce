import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Core/Widgets/button.dart';
import 'package:snap_shot/Core/Widgets/pop_arrow.dart';
import 'package:snap_shot/Core/Widgets/text_form_filed.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/title_subtitle.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppPagePadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PopArrow(),
                  Expanded(
                    child: AuthentactionTitleAndSubTitle(
                        title: 'Forgot Password',
                        subTitle:
                            "No worries! Let’s help you secure your account again."),
                  ),
                ],
              ),
              Space.instance.vertical36,
              const AppTextField(label: 'Email'),
              Space.instance.vertical36,
              AppButton(onPressed: () {}, label: 'Send')
            ],
          ),
        ),
      ),
    );
  }
}
