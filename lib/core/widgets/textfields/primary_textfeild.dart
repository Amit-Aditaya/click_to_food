import 'package:click_to_food/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextField extends StatelessWidget {
  final String hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? obscureText;
  String? Function(String?)? validator;
  TextEditingController? controller;
  TextInputType? keyboardType;

  PrimaryTextField(
      {super.key,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.validator,
      this.controller,
      this.keyboardType,
      this.obscureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        //  height: 55,
        width: double.infinity,
        child: TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obscureText == true ? true : false,
          obscuringCharacter: '●',
          cursorColor: const Color(AppColors.primaryColor),
          keyboardType: keyboardType,
          decoration: InputDecoration(
            errorStyle: TextStyle(
                color: const Color(
                  AppColors.errorRed,
                ),
                fontSize: 12.sp,
                fontWeight: FontWeight.w600),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color(AppColors.lightGrey), width: 1.5),
              borderRadius: BorderRadius.circular(25.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color(AppColors.lightGrey), width: 1.5),
              borderRadius: BorderRadius.circular(25.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color(AppColors.lightGrey), width: 1.5),
              borderRadius: BorderRadius.circular(25.0),
            ),
            hintText: hintText,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon ??
                const Icon(
                  Icons.email_outlined,
                  color: Color(AppColors.tertiaryTextColor),
                ),
            contentPadding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(17),
                horizontal: ScreenUtil().setWidth(10)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ));
  }
}
