import 'package:click_to_food/core/utils/app_images.dart';
import 'package:click_to_food/core/utils/const.dart';
import 'package:click_to_food/core/utils/validator.dart';
import 'package:click_to_food/core/widgets/buttons/app_back_button.dart';
import 'package:click_to_food/core/widgets/buttons/primary_button.dart';
import 'package:click_to_food/core/widgets/textfields/primary_textfeild.dart';
import 'package:click_to_food/core/widgets/texts/subtitle_text.dart';
import 'package:click_to_food/core/widgets/texts/title_text.dart';
import 'package:click_to_food/presentation/screens/login/verify_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Constants.appVerticalPadding,
            horizontal: Constants.appHorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBackButton(),
              SizedBox(
                height: .02.sh,
              ),
              SvgPicture.asset(
                AppImages.forgotPass,
                height: 0.2.sh,
              ),
              SizedBox(
                height: .02.sh,
              ),
              const TitleText(text: "Forgot password?"),
              SizedBox(
                height: .02.sh,
              ),
              const SubTitleText(
                  text:
                      "Don't worry, we'll help you reset it in no time. Provide your email or phone to get an OTP code."),
              SizedBox(
                height: .04.sh,
              ),
              PrimaryTextField(
                hintText: 'Enter email address',
                validator: Validators.validateEmail,
              ),
              SizedBox(
                height: .03.sh,
              ),
              PrimaryButton(
                  text: "Send OTP",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifyOtpScreen(
                                  navigateToNewPassScreen: true,
                                )));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
