import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {
  //const SecondaryButton({super.key});
  final String text;
  final Function onTap;
  final Widget? leadingWidget;
  Color? textColor;

  SecondaryButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.textColor,
      required this.leadingWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: .075.sh,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: .05.sw),
      decoration: BoxDecoration(
          color: const Color(
            AppColors.white,
          ),
          borderRadius: BorderRadius.circular(50),
          border:
              Border.all(color: const Color(AppColors.lightGrey), width: 2)),
      child: Row(
        mainAxisAlignment: leadingWidget != null
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (leadingWidget != null) leadingWidget!,
          Center(
            child: Text(
              text,
              style: TextStyle(
                  color: textColor ?? const Color(AppColors.primaryTextColor),
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp),
            ),
          ),
          if (leadingWidget != null) const SizedBox(),
        ],
      ),
    );
  }
}
