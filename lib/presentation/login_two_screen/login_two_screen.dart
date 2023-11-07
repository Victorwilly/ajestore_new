import 'bloc/login_two_bloc.dart';
import 'models/login_two_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/widgets/custom_elevated_button.dart';
import 'package:ajestores/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class LoginTwoScreen extends StatelessWidget {
  const LoginTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginTwoBloc>(
        create: (context) =>
            LoginTwoBloc(LoginTwoState(loginTwoModelObj: LoginTwoModel()))
              ..add(LoginTwoInitialEvent()),
        child: LoginTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<LoginTwoBloc, LoginTwoState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 33.h, top: 72.v, right: 33.h),
                  child: Column(children: [
                    CustomIconButton(
                        height: 42.adaptSize,
                        width: 42.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: IconButtonStyleHelper.fillPrimary,
                        alignment: Alignment.centerLeft,
                        onTap: () {
                          onTapBtnArrowLeft(context);
                        },
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft)),
                    SizedBox(height: 68.v),
                    Container(
                        height: 157.adaptSize,
                        width: 157.adaptSize,
                        padding: EdgeInsets.symmetric(
                            horizontal: 41.h, vertical: 53.v),
                        decoration: AppDecoration.outlinePrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder78),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgCheckmark,
                            height: 38.v,
                            width: 56.h,
                            alignment: Alignment.bottomRight)),
                    SizedBox(height: 49.v),
                    Text("msg_otp_verification".tr,
                        style: CustomTextStyles
                            .titleLargePoppinsOnSecondaryContainer),
                    SizedBox(height: 1.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_enter_the_otp_sent2".tr,
                              style: CustomTextStyles
                                  .bodyMediumPoppinsOnSecondaryContainer_1),
                          TextSpan(
                              text: "msg_234_8055620093".tr,
                              style: CustomTextStyles
                                  .titleSmallPoppinsOnSecondaryContainer)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 74.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup53,
                        height: 1.v,
                        width: 250.h),
                    SizedBox(height: 23.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_didn_t_you_receive2".tr,
                              style: CustomTextStyles.bodySmallPoppinsOnError),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "lbl_resend_otp".tr,
                              style: CustomTextStyles.bodySmallPoppinsPrimary)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 77.v),
                    CustomElevatedButton(
                        height: 39.v, width: 130.h, text: "lbl_confirm".tr),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
