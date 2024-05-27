import 'package:bloc_clean_coding/config/color/colors.dart';
import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

class RoudedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const RoudedButton({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 40,
        width: 250,
        decoration: BoxDecoration(
            color: AppColors.ButtonColor,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
