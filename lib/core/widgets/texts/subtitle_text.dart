import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubTitleText extends StatelessWidget {
  final String text;

  const SubTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: const Color(AppColors.tertiaryTextColor),
          fontSize: 15.sp,
          fontWeight: FontWeight.w400),
    );
  }
}
