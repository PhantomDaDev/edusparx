import 'package:edusparkx/core/app_export.dart';
import 'package:edusparkx/widgets/custom_elevated_button.dart';
import 'package:edusparkx/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupPageScreen extends StatelessWidget {
  SignupPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 43.h,
            top: 80.v,
            right: 43.h,
          ),
          child: Column(
            children: [
              Text(
                "lbl_sign_up".tr,
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 39.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_email".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 11.v),
              _buildEmail(context),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_password".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 11.v),
              _buildPassword(context),
              SizedBox(height: 62.v),
              _buildSignUpWithGoogle(context),
              SizedBox(height: 16.v),
              _buildSignUpWithApple(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      textInputAction: TextInputAction.done,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignUpWithGoogle(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_sign_up_with_google".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 18.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle4,
          height: 32.v,
          width: 30.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpWithApple(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_sign_up_with_apple".tr,
      leftIcon: Container(
        padding: EdgeInsets.only(
          left: 5.h,
          right: 9.h,
          bottom: 4.v,
        ),
        margin: EdgeInsets.only(right: 14.h),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgImageremovebgpreview31,
          height: 37.v,
          width: 29.h,
        ),
      ),
    );
  }
}
