import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextField extends StatelessWidget {
  final String hintText;

  const PrimaryTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: .075.sh,
        padding: EdgeInsets.symmetric(horizontal: .03.sw),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(AppColors.tertiaryTextColor)),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(
          child: TextField(
              cursorColor: const Color(AppColors.primaryColor),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: .005.sh),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle:
                    const TextStyle(color: Color(AppColors.tertiaryTextColor)),
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Color(AppColors.tertiaryTextColor),
                ),
              )),
        ));
  }
}
