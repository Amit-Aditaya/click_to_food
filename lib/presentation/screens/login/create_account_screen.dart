import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:click_to_food/core/utils/app_images.dart';
import 'package:click_to_food/core/utils/const.dart';
import 'package:click_to_food/core/utils/validator.dart';
import 'package:click_to_food/core/widgets/buttons/app_back_button.dart';
import 'package:click_to_food/core/widgets/buttons/primary_button.dart';
import 'package:click_to_food/core/widgets/textfields/primary_textfeild.dart';
import 'package:click_to_food/core/widgets/texts/subtitle_text.dart';
import 'package:click_to_food/core/widgets/texts/title_text.dart';
import 'package:click_to_food/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool isPasswordObscure = true;

  bool isConfirmPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Constants.appHorizontalPadding,
            horizontal: Constants.appHorizontalPadding),
        child: SingleChildScrollView(
          child: SizedBox(
            height: .95.sh,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    const AppBackButton(),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    const TitleText(text: "Personal information"),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    const SubTitleText(
                        text: "Please provide us your information to continue"),
                    SizedBox(
                      height: 0.025.sh,
                    ),
                    PrimaryTextField(
                      validator: Validators.validateFullName,
                      hintText: 'Type your full name',
                      prefixIcon: const Icon(
                        Icons.person_2_outlined,
                        color: Color(AppColors.tertiaryTextColor),
                      ),
                    ),
                    SizedBox(
                      height: 0.025.sh,
                    ),
                    PrimaryTextField(
                      validator: Validators.validateEmail,
                      hintText: 'Type your email address',
                    ),
                    SizedBox(
                      height: 0.025.sh,
                    ),
                    // [TODO] insert country picker package
                    PrimaryTextField(
                      keyboardType: TextInputType.number,
                      hintText: 'Type your phone number',
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Color(AppColors.tertiaryTextColor),
                      ),
                    ),
                    SizedBox(
                      height: 0.025.sh,
                    ),
                    PrimaryTextField(
                      validator: Validators.validatePassword,
                      obscureText: isPasswordObscure,
                      hintText: 'Type your password',
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(12.5),
                        height: 0.04.sh,
                        width: 0.04.sh,
                        child: SvgPicture.asset(
                          AppImages.lockPassword,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          isPasswordObscure = !isPasswordObscure;
                          setState(() {});
                        },
                        child: Icon(
                          isPasswordObscure
                              ? Icons.visibility_outlined
                              : Icons.visibility_off,
                          color: const Color(AppColors.tertiaryTextColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.025.sh,
                    ),
                    PrimaryTextField(
                      validator: Validators.validatePassword,
                      obscureText: isConfirmPasswordObscure,
                      hintText: 'Confirm your password',
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(12.5),
                        height: 0.04.sh,
                        width: 0.04.sh,
                        child: SvgPicture.asset(
                          AppImages.lockPassword,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          isConfirmPasswordObscure = !isConfirmPasswordObscure;
                          setState(() {});
                        },
                        child: Icon(
                          isConfirmPasswordObscure
                              ? Icons.visibility_outlined
                              : Icons.visibility_off,
                          color: const Color(AppColors.tertiaryTextColor),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                PrimaryButton(
                    text: 'Continue',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
