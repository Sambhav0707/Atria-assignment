import 'package:atria_assignment_sambhav07/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50,
      width: width ?? 200,
      decoration: BoxDecoration(
        color: AppPallete.buttonColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Mulish",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppPallete.whiteColor,
          ),
        ),
      ),
    );
  }
}
