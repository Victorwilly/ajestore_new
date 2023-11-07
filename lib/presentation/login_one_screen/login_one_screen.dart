import 'bloc/login_one_bloc.dart';
import 'models/login_one_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/core/utils/validation_functions.dart';
import 'package:ajestores/widgets/custom_elevated_button.dart';
import 'package:ajestores/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginOneScreen extends StatelessWidget {
  LoginOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginOneBloc>(
        create: (context) =>
            LoginOneBloc(LoginOneState(loginOneModelObj: LoginOneModel()))
              ..add(LoginOneInitialEvent()),
        child: LoginOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          _buildLoginForm(context),
                          SizedBox(height: 22.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 45.h),
                              child: BlocSelector<LoginOneBloc, LoginOneState,
                                      TextEditingController?>(
                                  selector: (state) => state.passwordController,
                                  builder: (context, passwordController) {
                                    return CustomTextFormField(
                                        controller: passwordController,
                                        hintText: "lbl_password".tr,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        alignment: Alignment.center,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                18.h, 14.v, 16.h, 14.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector,
                                                height: 17.v,
                                                width: 14.h)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 50.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_password"
                                                .tr;
                                          }
                                          return null;
                                        },
                                        obscureText: true);
                                  })),
                          SizedBox(height: 12.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 52.h),
                                  child: Text("msg_forgot_password".tr,
                                      style: CustomTextStyles
                                          .bodyMediumLatoPrimary))),
                          SizedBox(height: 107.v),
                          _buildSignInForm(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return SizedBox(
        height: 363.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector1,
              height: 119.v,
              width: 390.h,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: 320.adaptSize,
                  width: 320.adaptSize,
                  margin: EdgeInsets.only(right: 17.h),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgAdaptiveIconR,
                        height: 320.adaptSize,
                        width: 320.adaptSize,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 49.h, bottom: 67.v),
                            child: Text("msg_sign_in_to_your".tr,
                                style: CustomTextStyles
                                    .bodyLargePoppinsOnSecondaryContainer)))
                  ]))),
          BlocSelector<LoginOneBloc, LoginOneState, TextEditingController?>(
              selector: (state) => state.userNameController,
              builder: (context, userNameController) {
                return CustomTextFormField(
                    width: 300.h,
                    controller: userNameController,
                    hintText: "lbl_username".tr,
                    alignment: Alignment.bottomCenter,
                    prefix: Container(
                        margin: EdgeInsets.fromLTRB(14.h, 13.v, 6.h, 13.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    prefixConstraints: BoxConstraints(maxHeight: 50.v),
                    validator: (value) {
                      if (!isText(value)) {
                        return "err_msg_please_enter_valid_text".tr;
                      }
                      return null;
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildSignInForm(BuildContext context) {
    return SizedBox(
        height: 305.v,
        width: 336.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 32.h, bottom: 103.v),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_don_t_have_an_account2".tr,
                            style: CustomTextStyles
                                .bodyMediumOnSecondaryContainer),
                        TextSpan(
                            text: "lbl_create".tr,
                            style: CustomTextStyles
                                .bodyMediumOnSecondaryContainer
                                .copyWith(decoration: TextDecoration.underline))
                      ]),
                      textAlign: TextAlign.left))),
          CustomImageView(
              imagePath: ImageConstant.imgVector2,
              height: 305.v,
              width: 94.h,
              alignment: Alignment.centerLeft),
          CustomElevatedButton(
              height: 39.v,
              width: 130.h,
              text: "lbl_sign_in".tr,
              margin: EdgeInsets.only(top: 48.v),
              rightIcon: Container(
                  margin: EdgeInsets.only(left: 11.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFrame,
                      height: 14.v,
                      width: 19.h)),
              alignment: Alignment.topRight)
        ]));
  }
}
