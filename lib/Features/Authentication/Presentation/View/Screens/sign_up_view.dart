import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Page%20Layout/page_padding.dart';
import 'package:snap_shot/Core/Page%20Layout/scroll_page.dart';
import 'package:snap_shot/Core/Widgets/button.dart';
import 'package:snap_shot/Core/Widgets/text_form_filed.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/continue_with_google.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/have_account_text.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/or_divider.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/terma_conditions_checkbox.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/title_subtitle.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                    title: 'Welcome!',
                    subTitle: "Join us and start your shopping journey"),
                Space.instance.vertical24,
                const AppTextField(label: 'User Name'),
                Space.instance.vertical18,
                const AppTextField(label: 'Email'),
                Space.instance.vertical18,
                const AppTextField(label: 'Password'),
                Space.instance.vertical18,
                const AppTextField(label: 'Confirm Password'),
                Space.instance.vertical18,
                const TermaConditionsCheckbox(),
                Space.instance.vertical18,
                const OrDivider(),
                Space.instance.vertical50,
                const ContinueWithGoogle(),
                Space.instance.vertical36,
                AppButton(onPressed: () {}, label: 'Sign Up'),
                Space.instance.vertical24,
                const Center(child: HaveAccountText())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
