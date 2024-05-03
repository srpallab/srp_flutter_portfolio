import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SrpTextField extends StatelessWidget {
  const SrpTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.maxLine = 1,
  });
  final String hintText;
  final int maxLine;
  final TextEditingController controller;

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: SrpColors.scaffoldBg),
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 20,
        ),
        hintStyle: const TextStyle(color: SrpColors.hintDark),
        filled: true,
        fillColor: SrpColors.whiteSecondary,
        border: getInputBorder,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
      ),
    );
  }
}
