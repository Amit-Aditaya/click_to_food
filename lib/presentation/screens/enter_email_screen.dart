import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:click_to_food/core/utils/app_images.dart';
import 'package:click_to_food/core/utils/const.dart';
import 'package:click_to_food/core/widgets/buttons/app_back_button.dart';
import 'package:click_to_food/core/widgets/buttons/primary_button.dart';
import 'package:click_to_food/core/widgets/textfields/primary_textfeild.dart';
import 'package:click_to_food/core/widgets/texts/subtitle_text.dart';
import 'package:click_to_food/core/widgets/texts/title_text.dart';
import 'package:click_to_food/presentation/screens/enter_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnterEmailScreen extends StatelessWidget {
  EnterEmailScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Container(
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
                    const TitleText(text: "Log In with email"),
                    SizedBox(
                      height: .01.sh,
                    ),
                    const SubTitleText(
                        text: "Let’s log in into your Click To Food account"),
                    SizedBox(
                      height: .025.sh,
                    ),
                    PrimaryTextField(
                      controller: _emailController,
                      hintText: "Enter your email",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        const String emailPattern =
                            r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+$';
                        final RegExp regex = RegExp(emailPattern);
                        if (!regex.hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: .03.sh,
                    ),
                    PrimaryButton(
                      text: "Continue",
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const EnterPasswordScreen();
                          }));
                        }
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
