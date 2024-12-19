import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {
  //const SecondaryButton({super.key});
  final String text;
  final Function onTap;
  final Widget leadingWidget;

  const SecondaryButton(
      {super.key,
      required this.text,
      required this.onTap,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leadingWidget,
          Text(
            'Continue with Google',
            style: TextStyle(
                color: const Color(AppColors.primaryTextColor),
                fontWeight: FontWeight.w700,
                fontSize: 14.sp),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
