import 'bloc/checkout_bloc.dart';
import 'models/checkout_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ajestores/widgets/app_bar/appbar_subtitle.dart';
import 'package:ajestores/widgets/app_bar/custom_app_bar.dart';
import 'package:ajestores/widgets/custom_elevated_button.dart';
import 'package:ajestores/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckoutBloc>(
        create: (context) =>
            CheckoutBloc(CheckoutState(checkoutModelObj: CheckoutModel()))
              ..add(CheckoutInitialEvent()),
        child: CheckoutScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10001,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 7.v),
                  _buildProductDetails(context),
                  SizedBox(height: 19.v),
                  SizedBox(
                      height: 78.v,
                      width: 311.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 25.v, right: 20.h),
                                child: Text("msg_pick_up_in_store".tr,
                                    style:
                                        CustomTextStyles.bodySmallWhiteA700))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 31.h, vertical: 17.v),
                                decoration: AppDecoration.fillWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder30),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLocation,
                                          height: 18.v,
                                          width: 14.h,
                                          margin: EdgeInsets.only(
                                              top: 5.v, bottom: 18.v)),
                                      Container(
                                          height: 37.v,
                                          width: 197.h,
                                          margin: EdgeInsets.only(
                                              left: 8.h, top: 4.v),
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Text(
                                                        "lbl_shipping_time".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallPoppinsOnPrimaryContainer)),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Text(
                                                        "msg_delivered_in_7_working2"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .titleSmallPoppinsGray800))
                                              ]))
                                    ])))
                      ])),
                  SizedBox(height: 12.v),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 39.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 26.h, vertical: 19.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 6.h, bottom: 1.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgUnion,
                                                    height: 13.v,
                                                    width: 14.h,
                                                    margin: EdgeInsets.only(
                                                        top: 3.v,
                                                        bottom: 19.v)),
                                                Expanded(
                                                    child: Container(
                                                        width: 189.h,
                                                        margin: EdgeInsets.only(
                                                            left: 6.h),
                                                        child: Text(
                                                            "msg_27_anating_street"
                                                                .tr,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: CustomTextStyles
                                                                .titleSmallPoppinsGray800
                                                                .copyWith(
                                                                    height:
                                                                        1.23))))
                                              ]),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20.h),
                                              child: Text(
                                                  "msg_delivery_location".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallPoppinsOnPrimaryContainer))
                                        ]))),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgUnionSecondarycontainer,
                                height: 20.v,
                                width: 18.h,
                                margin: EdgeInsets.only(
                                    left: 23.h, top: 17.v, bottom: 18.v))
                          ])),
                  Spacer(),
                  _buildCheckoutSummary(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 71.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 4.v, bottom: 4.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_checkout".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 112.adaptSize,
              width: 112.adaptSize,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 91.v,
                        width: 85.h,
                        margin: EdgeInsets.only(right: 10.h),
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(22.h)))),
                CustomImageView(
                    imagePath: ImageConstant.img5d02da5df552836,
                    height: 112.adaptSize,
                    width: 112.adaptSize,
                    alignment: Alignment.center)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 7.h, top: 33.v, bottom: 24.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_sony_wh_1000xm42".tr,
                        style: CustomTextStyles.titleLargeGray80004),
                    SizedBox(height: 1.v),
                    Text("lbl_24_90".tr,
                        style: CustomTextStyles.titleLargePrimary)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildCheckoutSummary(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 24.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, right: 8.h),
                  child: _buildTotal(context,
                      totalLabel: "msg_subtotal_1_items".tr,
                      priceLabel: "lbl_24_90".tr)),
              SizedBox(height: 8.v),
              SizedBox(
                  height: 30.v,
                  width: 358.h,
                  child: Stack(alignment: Alignment.topRight, children: [
                    BlocSelector<CheckoutBloc, CheckoutState,
                            TextEditingController?>(
                        selector: (state) => state.shippingcostController,
                        builder: (context, shippingcostController) {
                          return CustomTextFormField(
                              width: 358.h,
                              controller: shippingcostController,
                              hintText: "lbl_shipping_cost".tr,
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.h),
                              borderDecoration:
                                  TextFormFieldStyleHelper.underLineBlueGray,
                              filled: false);
                        }),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 8.h),
                            child: Text("lbl_7_30".tr,
                                style: CustomTextStyles.titleSmallGray800)))
                  ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, right: 8.h),
                  child: _buildTotal(context,
                      totalLabel: "lbl_total".tr, priceLabel: "lbl_32_20".tr)),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                  text: "msg_finalize_checkout".tr,
                  margin: EdgeInsets.only(left: 24.h, right: 19.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL24,
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA700)
            ]));
  }

  /// Common widget
  Widget _buildTotal(
    BuildContext context, {
    required String totalLabel,
    required String priceLabel,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(totalLabel,
          style:
              theme.textTheme.titleMedium!.copyWith(color: appTheme.gray800)),
      Text(priceLabel,
          style: theme.textTheme.titleMedium!.copyWith(color: appTheme.gray800))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
