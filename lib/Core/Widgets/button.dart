import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  final void Function() onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ));
  }
}
