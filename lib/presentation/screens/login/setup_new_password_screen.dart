import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:click_to_food/core/utils/app_images.dart';
import 'package:click_to_food/core/utils/const.dart';
import 'package:click_to_food/core/utils/validator.dart';
import 'package:click_to_food/core/widgets/buttons/app_back_button.dart';
import 'package:click_to_food/core/widgets/buttons/primary_button.dart';
import 'package:click_to_food/core/widgets/textfields/primary_textfeild.dart';
import 'package:click_to_food/core/widgets/texts/subtitle_text.dart';
import 'package:click_to_food/core/widgets/texts/title_text.dart';
import 'package:click_to_food/presentation/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SetupNewPasswordScreen extends StatefulWidget {
  const SetupNewPasswordScreen({super.key});

  @override
  State<SetupNewPasswordScreen> createState() => _SetupNewPasswordScreenState();
}

class _SetupNewPasswordScreenState extends State<SetupNewPasswordScreen> {
  bool isPasswordObscure = true;

  bool isConfirmPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: .85.sh,
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
                    AppImages.newPass,
                    height: 0.2.sh,
                  ),
                  SizedBox(
                    height: .02.sh,
                  ),
                  const TitleText(text: 'Setup new password'),
                  SizedBox(
                    height: .02.sh,
                  ),
                  const SubTitleText(
                      text: "Enter a secure key (at least 6 characters)"),
                  SizedBox(
                    height: .04.sh,
                  ),
                  Text(
                    "Enter new password",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(AppColors.black)),
                  ),
                  SizedBox(
                    height: .02.sh,
                  ),
                  PrimaryTextField(
                    hintText: "Type your password",
                    obscureText: isPasswordObscure,
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(12.5),
                      height: 0.04.sh,
                      width: 0.04.sh,
                      child: SvgPicture.asset(
                        AppImages.lockPassword,
                      ),
                    ),
                    validator: Validators.validatePassword,
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
                    height: .02.sh,
                  ),
                  Text(
                    "Confirm password",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(AppColors.black)),
                  ),
                  SizedBox(
                    height: .02.sh,
                  ),
                  PrimaryTextField(
                    hintText: "Confirm password",
                    obscureText: isConfirmPasswordObscure,
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(12.5),
                      height: 0.04.sh,
                      width: 0.04.sh,
                      child: SvgPicture.asset(
                        AppImages.lockPassword,
                      ),
                    ),
                    validator: Validators.validatePassword,
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
                  //  const Spacer(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Constants.appVerticalPadding,
                  horizontal: Constants.appHorizontalPadding),
              child: PrimaryButton(
                  text: "Save and continue",
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          Future.delayed(const Duration(seconds: 2), () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          });
                          return AlertDialog(
                            shadowColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            content: Image.asset(
                              AppImages.success,
                              height: .3.sh,
                              width: .3.sh,
                            ),
                          );
                        });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
