import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:click_to_food/core/utils/app_images.dart';
import 'package:click_to_food/core/widgets/buttons/primary_button.dart';
import 'package:click_to_food/core/widgets/buttons/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NoAccountDialog extends StatelessWidget {
  const NoAccountDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(AppImages.red_user),
              const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.close,
                  color: Color(AppColors.black),
                ),
              )
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Text(
            'Account not found!!',
            style: TextStyle(
                color: const Color(
                  AppColors.primaryTextColor,
                ),
                fontWeight: FontWeight.w700,
                fontSize: 16.sp),
          ),
          SizedBox(
            height: 0.01.sh,
          ),
          Text(
            'It looks like there’s no account associated with this phone number. Click continue to open a new account.',
            style: TextStyle(
                color: const Color(
                  AppColors.mediumGrey,
                ),
                fontWeight: FontWeight.w600,
                fontSize: 12.sp),
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Row(
            children: [
              Expanded(
                child: SecondaryButton(
                    text: 'Back',
                    onTap: () {},
                    textColor: const Color(AppColors.mediumGrey),
                    leadingWidget: null),
              ),
              SizedBox(
                width: 0.02.sw,
              ),
              Expanded(
                child: PrimaryButton(
                    isSmall: true, text: 'Create Account', onTap: () {}),
              )
            ],
          )
        ],
      ),
    );
  }
}
