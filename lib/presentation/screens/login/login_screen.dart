import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:click_to_food/core/utils/app_images.dart';
import 'package:click_to_food/core/utils/const.dart';
import 'package:click_to_food/core/widgets/buttons/primary_button.dart';
import 'package:click_to_food/core/widgets/buttons/secondary_button.dart';
import 'package:click_to_food/core/widgets/texts/title_text.dart';
import 'package:click_to_food/presentation/screens/login/enter_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppImages.loginImage,
            height: .35.sh,
          ),
          const TitleText(text: "Welcome back 👋"),
          SizedBox(height: .07.sh),
          Text(
            "Choose your log in method",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: const Color(AppColors.secondaryTextColor),
            ),
          ),
          SizedBox(
            height: .025.sh,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Constants.appHorizontalPadding),
            child: Column(
              children: [
                PrimaryButton(
                  text: 'Continue with Email',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return EnterEmailScreen();
                    }));
                  },
                  addLeadingWidget: true,
                ),
                SizedBox(height: .02.sh),
                Row(
                  children: [
                    const Expanded(
                        child: Divider(
                            color: Color(AppColors.lightGrey), thickness: 1)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "or",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    const Expanded(
                        child: Divider(
                            color: Color(AppColors.lightGrey), thickness: 1)),
                  ],
                ),
                SizedBox(height: .03.sh),
                SecondaryButton(
                  text: 'Continue with Google',
                  onTap: () {},
                  leadingWidget: Image(
                    height: .035.sh,
                    image: const AssetImage(
                      AppImages.googleLogo,
                    ),
                  ),
                ),
                SizedBox(height: .02.sh),
                SecondaryButton(
                    text: 'Continue with Apple',
                    onTap: () {},
                    leadingWidget: Icon(
                      Icons.apple,
                      size: .035.sh,
                    ))
              ],
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text.rich(
              TextSpan(
                text: "By clicking, you accept our ",
                style:
                    TextStyle(color: Color(AppColors.lightGrey), fontSize: 12),
                children: [
                  TextSpan(
                    text: "Terms and Conditions",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(AppColors.mediumGrey)),
                  ),
                  TextSpan(text: ", "),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(
                      color: Color(AppColors.mediumGrey),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: " and "),
                  TextSpan(
                    text: "Cookies Policy",
                    style: TextStyle(
                      color: Color(AppColors.mediumGrey),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
