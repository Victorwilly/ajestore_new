import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/core/utils/validation_functions.dart';
import 'package:ajestores/widgets/custom_elevated_button.dart';
import 'package:ajestores/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState(
        loginModelObj: LoginModel(),
      ))
        ..add(LoginInitialEvent()),
      child: LoginScreen(),
    );
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
              child: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVector1,
                      height: 119.v,
                      width: 390.h,
                      alignment: Alignment.topCenter,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector2,
                      height: 305.v,
                      width: 94.h,
                      alignment: Alignment.bottomLeft,
                    ),
                    _buildCreateAccountSection(context),
                    _buildCreateButtonSection(context),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 69.v),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_have_have_an_account2".tr,
                                style: CustomTextStyles
                                    .bodyMediumOnSecondaryContainer,
                              ),
                              TextSpan(
                                text: "lbl_login2".tr,
                                style: CustomTextStyles
                                    .bodyMediumOnSecondaryContainer
                                    .copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 45.h,
                          right: 45.h,
                          bottom: 263.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildUserNameEditTextSection(context),
                            SizedBox(height: 22.v),
                            _buildPasswordEditTextSection(context),
                            SizedBox(height: 22.v),
                            _buildEmailEditTextSection(context),
                            SizedBox(height: 22.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 18.h,
                                vertical: 14.v,
                              ),
                              decoration: AppDecoration.fillGray.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder25,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 20.v,
                                    width: 14.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray500,
                                      borderRadius: BorderRadius.circular(
                                        3.h,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 15.h,
                                      bottom: 2.v,
                                    ),
                                    child: Text(
                                      "lbl_mobile".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccountSection(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 320.adaptSize,
        width: 320.adaptSize,
        margin: EdgeInsets.only(
          top: 19.v,
          right: 17.h,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAdaptiveIconR,
              height: 320.adaptSize,
              width: 320.adaptSize,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 78.h,
                  bottom: 68.v,
                ),
                child: Text(
                  "lbl_create_account".tr,
                  style: CustomTextStyles.bodyLargePoppinsOnSecondaryContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateButtonSection(BuildContext context) {
    return CustomElevatedButton(
      height: 39.v,
      width: 130.h,
      text: "lbl_create2".tr,
      margin: EdgeInsets.only(
        right: 54.h,
        bottom: 184.v,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgVector3,
          height: 1.v,
          width: 19.h,
        ),
      ),
      alignment: Alignment.bottomRight,
    );
  }

  /// Section Widget
  Widget _buildUserNameEditTextSection(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, TextEditingController?>(
      selector: (state) => state.userNameEditTextSectionController,
      builder: (context, userNameEditTextSectionController) {
        return CustomTextFormField(
          controller: userNameEditTextSectionController,
          hintText: "lbl_username".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(14.h, 13.v, 5.h, 13.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 50.v,
          ),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordEditTextSection(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, TextEditingController?>(
      selector: (state) => state.passwordEditTextSectionController,
      builder: (context, passwordEditTextSectionController) {
        return CustomTextFormField(
          controller: passwordEditTextSectionController,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 14.v, 15.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 17.v,
              width: 14.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 50.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailEditTextSection(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, TextEditingController?>(
      selector: (state) => state.emailEditTextSectionController,
      builder: (context, emailEditTextSectionController) {
        return CustomTextFormField(
          controller: emailEditTextSectionController,
          hintText: "lbl_e_mail".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 19.v, 15.h, 19.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEmail,
              height: 11.v,
              width: 14.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 50.v,
          ),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }
}
