import 'bloc/login_three_bloc.dart';
import 'models/login_three_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/widgets/custom_elevated_button.dart';
import 'package:ajestores/widgets/custom_icon_button.dart';
import 'package:ajestores/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginThreeScreen extends StatelessWidget {
  const LoginThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginThreeBloc>(
        create: (context) => LoginThreeBloc(
            LoginThreeState(loginThreeModelObj: LoginThreeModel()))
          ..add(LoginThreeInitialEvent()),
        child: LoginThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 72.v),
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
                  SizedBox(height: 21.v),
                  SizedBox(
                      height: 68.v,
                      width: 293.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Text("msg_delivery_address".tr,
                                style: CustomTextStyles
                                    .titleLargePoppinsOnSecondaryContainer)),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                width: 293.h,
                                child: Text("msg_choose_your_current".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyMediumPoppinsOnSecondaryContainer
                                        .copyWith(height: 1.16))))
                      ])),
                  SizedBox(height: 39.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      child: BlocSelector<LoginThreeBloc, LoginThreeState,
                              TextEditingController?>(
                          selector: (state) => state.addressController,
                          builder: (context, addressController) {
                            return CustomTextFormField(
                                controller: addressController,
                                hintText: "msg_enter_your_address".tr,
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        20.h, 15.v, 9.h, 13.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgSearch,
                                        height: 22.adaptSize,
                                        width: 22.adaptSize)),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 50.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.fillGrayTL25,
                                fillColor: appTheme.gray10002);
                          })),
                  Spacer(),
                  SizedBox(height: 99.v),
                  CustomElevatedButton(
                      height: 39.v, width: 130.h, text: "lbl_confirm".tr)
                ]))));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
