import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 0.4, color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.black),
          ),
          label: Text(
            label,
            style: TextStyle(fontSize: 18, color: Colors.grey[500]),
          ),
          contentPadding: const EdgeInsets.all(22),
          labelStyle: const TextStyle(color: Colors.black, fontSize: 24)),
    );
  }
}
