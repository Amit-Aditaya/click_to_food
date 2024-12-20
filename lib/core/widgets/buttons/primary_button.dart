import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function onTap;
  bool? addLeadingWidget;
  bool? isSmall;

  PrimaryButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.isSmall,
      this.addLeadingWidget});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: isSmall == true ? .025 : .05.sw),
        decoration: BoxDecoration(
            color: const Color(AppColors.primaryColor),
            borderRadius: BorderRadius.circular(50)),
        height: .075.sh,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: isSmall == true
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addLeadingWidget == true
                ? Icon(
                    Icons.email_outlined,
                    size: .03.sh,
                    color: const Color(AppColors.white),
                  )
                : SizedBox(
                    width: isSmall == true ? 0 : .025.sw,
                  ),
            Text(
              text,
              style: TextStyle(
                  color: const Color(AppColors.white),
                  fontSize: isSmall == true ? 12.5.sp : 14.sp,
                  fontWeight: FontWeight.w700),
            ),
            Icon(
              Icons.email_outlined,
              size: isSmall == true ? 0.02.sh : .03.sh,
              color: const Color(AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
