import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:click_to_food/core/utils/app_images.dart';
import 'package:click_to_food/core/utils/const.dart';
import 'package:click_to_food/core/widgets/buttons/app_back_button.dart';
import 'package:click_to_food/core/widgets/buttons/primary_button.dart';
import 'package:click_to_food/core/widgets/texts/subtitle_text.dart';
import 'package:click_to_food/core/widgets/texts/title_text.dart';
import 'package:click_to_food/presentation/screens/login/create_account_screen.dart';
import 'package:click_to_food/presentation/screens/login/setup_new_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatelessWidget {
  bool? navigateToNewPassScreen;

  VerifyOtpScreen({super.key, this.navigateToNewPassScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: .9.sh,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: Constants.appHorizontalPadding,
                  vertical: Constants.appVerticalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBackButton(),
                  SizedBox(
                    height: .02.sh,
                  ),
                  SvgPicture.asset(
                    AppImages.otp,
                    height: 0.2.sh,
                  ),
                  SizedBox(
                    height: .05.sh,
                  ),
                  const TitleText(text: "OTP verification"),
                  SizedBox(
                    height: .01.sh,
                  ),
                  const SubTitleText(
                      text: "We’ve sent an OTP to mart*****4@gmail.com"),
                  SizedBox(
                    height: .025.sh,
                  ),
                  SizedBox(
                    height: .02.sh,
                  ),
                  Text(
                    'Please enter the code below:',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(AppColors.secondaryTextColor)),
                  ),
                  SizedBox(
                    height: .02.sh,
                  ),
                  PinCodeTextField(
                    appContext: context,
                    length: 4, // Adjust for your OTP length
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(50),
                        fieldHeight: 50,
                        fieldWidth: 0.2.sw,
                        activeFillColor: Colors.transparent,
                        inactiveFillColor: const Color(AppColors.white),
                        inactiveColor: const Color(AppColors.lightGrey),
                        selectedFillColor: const Color(AppColors.white),
                        activeColor: const Color(AppColors.lightGrey),
                        selectedColor: const Color(AppColors.lightGrey),
                        disabledColor: const Color(AppColors.lightGrey)),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    keyboardType: TextInputType.number,
                    enableActiveFill: true,
                    onCompleted: (v) {},
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: .01.sh,
                  ),
                  Row(
                    children: [
                      Text(
                        "Didn't receive the otp?",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(AppColors.secondaryTextColor)),
                      ),
                      SizedBox(
                        width: 0.01.sw,
                      ),
                      Text(
                        "Resend OTP",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(AppColors.lightGrey)),
                      ),
                      const Spacer(),
                      Text(
                        "30s",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(AppColors.secondaryTextColor)),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Constants.appHorizontalPadding),
              child: PrimaryButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return navigateToNewPassScreen == true
                        ? SetupNewPasswordScreen()
                        : const CreateAccountScreen();
                  }));
                },
                text: 'Submit',
              ),
            )
          ],
        ),
      ),
    );
  }
}
