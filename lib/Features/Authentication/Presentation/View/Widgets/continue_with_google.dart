import 'package:flutter/material.dart';
import 'package:snap_shot/Core/assets.dart';

class ContinueWithGoogle extends StatelessWidget {
  const ContinueWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: () {},
        icon: Image.asset(
          Assets.googleLogo, // Use your local image
          height: 32,
          width: 32,
        ),
        label: const Text(
          'Continue with Google',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.grey),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ));
  }
}
