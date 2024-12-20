import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:click_to_food/core/utils/app_images.dart';
import 'package:click_to_food/core/utils/const.dart';
import 'package:click_to_food/core/widgets/buttons/app_back_button.dart';
import 'package:click_to_food/core/widgets/buttons/primary_button.dart';
import 'package:click_to_food/core/widgets/textfields/primary_textfeild.dart';
import 'package:click_to_food/core/widgets/texts/subtitle_text.dart';
import 'package:click_to_food/core/widgets/texts/title_text.dart';
import 'package:click_to_food/presentation/widget/dialogs/login/no_account_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EnterPasswordScreen extends StatefulWidget {
  const EnterPasswordScreen({super.key});

  @override
  State<EnterPasswordScreen> createState() => _EnterPasswordScreenState();
}

class _EnterPasswordScreenState extends State<EnterPasswordScreen> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: .9.sh,
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
                    AppImages.loginImage1,
                    height: 0.2.sh,
                  ),
                  SizedBox(
                    height: .05.sh,
                  ),
                  const TitleText(text: "Enter your password"),
                  SizedBox(
                    height: .01.sh,
                  ),
                  const SubTitleText(
                      text: "Please enter your password to continue"),
                  SizedBox(
                    height: .025.sh,
                  ),
                  PrimaryTextField(
                    hintText: "Type your password",
                    obscureText: isObscure,
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
                        isObscure = !isObscure;
                        setState(() {});
                      },
                      child: Icon(
                        isObscure
                            ? Icons.visibility_outlined
                            : Icons.visibility_off,
                        color: const Color(AppColors.tertiaryTextColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.01.sh,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 0.01.sw),
                        child: Text(
                          'forgot password?',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(AppColors.mediumGrey)),
                        ),
                      )),
                  SizedBox(
                    height: .03.sh,
                  ),
                  PrimaryButton(
                    text: "Log in",
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const NoAccountDialog();
                          });
                    },
                  ),
                  SizedBox(
                    height: .03.sh,
                  ),
                  Center(
                    child: Text(
                      'Log in with your phone number',
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const Text('Sign in with'),
            SizedBox(
              height: .02.sw,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: .05.sh,
                  width: .05.sh,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(AppColors.lightMediumGrey),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(7),
                      child: Image(
                        image: AssetImage(AppImages.googleLogo),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: .02.sw,
                ),
                Container(
                  height: .05.sh,
                  width: .05.sh,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(AppColors.lightMediumGrey),
                  ),
                  child: const Center(
                    child: Icon(Icons.apple),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
