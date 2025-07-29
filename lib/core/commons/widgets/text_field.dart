import 'package:atria_assignment_sambhav07/core/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool? obscureText;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    this.labelText,
    this.validator,
    this.controller,
    this.obscureText,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText ?? false,
      obscuringCharacter: "•",
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
