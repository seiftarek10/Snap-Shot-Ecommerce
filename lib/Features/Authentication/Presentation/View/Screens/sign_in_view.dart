import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Core/Page%20Layout/scroll_page.dart';
import 'package:snap_shot/Core/Widgets/button.dart';
import 'package:snap_shot/Core/Widgets/text_form_filed.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/continue_with_google.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/forget_password.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/no_account.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/or_divider.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/title_subtitle.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppScrollingPage(
          child: AppPagePadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const AuthentactionTitleAndSubTitle(
                  title: "Welcome back!",
                  subTitle: "Please enter your Details",
                ),
                Space.instance.vertical36,
                const AppTextField(
                  label: 'Email',
                ),
                Space.instance.vertical36,
                const AppTextField(
                  label: 'Password',
                ),
                Space.instance.vertical8,
                const Align(
                    alignment: Alignment.centerRight,
                    child: ForgetPasswordText()),
                Space.instance.vertical36,
                AppButton(
                  label: 'Sign In',
                  onPressed: () {},
                ),
                Space.instance.vertical36,
                const OrDivider(),
                Space.instance.vertical36,
                const ContinueWithGoogle(),
                Space.instance.vertical24,
                const Center(
                  child: NoAccountText(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
