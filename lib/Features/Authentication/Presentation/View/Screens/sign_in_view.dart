import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Widgets/button.dart';
import 'package:snap_shot/Core/Widgets/text_form_filed.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Widgets/title_subtitle.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthentactionTitleAndSubTitle(
                title: "Welcome back!",
                subTitle: "Please enter your Details",
              ),
              Space.instance.vertical36,
              const AppTextField(
                label: 'Email',
              ),
              Space.instance.vertical24,
              const AppTextField(
                label: 'Password',
              ),
              Space.instance.vertical8,
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Forget Password ?',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                        textAlign: TextAlign.end),
                  )),
              Space.instance.vertical36,
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  label: 'Sign In',
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
