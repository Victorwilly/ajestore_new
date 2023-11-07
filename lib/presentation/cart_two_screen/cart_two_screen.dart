import 'bloc/cart_two_bloc.dart';
import 'models/cart_two_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/presentation/home_tab_container_page/home_tab_container_page.dart';
import 'package:ajestores/widgets/app_bar/appbar_leading_image.dart';
import 'package:ajestores/widgets/app_bar/appbar_title.dart';
import 'package:ajestores/widgets/app_bar/custom_app_bar.dart';
import 'package:ajestores/widgets/custom_bottom_bar.dart';
import 'package:ajestores/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CartTwoScreen extends StatelessWidget {
  CartTwoScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CartTwoBloc>(
        create: (context) =>
            CartTwoBloc(CartTwoState(cartTwoModelObj: CartTwoModel()))
              ..add(CartTwoInitialEvent()),
        child: CartTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CartTwoBloc, CartTwoState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray100,
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 24.v),
                  child: Column(children: [
                    _buildFolderStack(context),
                    _buildDdadfRow(context),
                    Spacer(),
                    CustomElevatedButton(
                        text: "lbl_checkout".tr,
                        margin: EdgeInsets.only(left: 29.h, right: 40.h),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL24,
                        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700)
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 63.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 4.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_cart".tr, margin: EdgeInsets.only(left: 2.h)));
  }

  /// Section Widget
  Widget _buildFolderStack(BuildContext context) {
    return SizedBox(
        height: 86.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.h, vertical: 32.v),
                  decoration: AppDecoration.fillPrimary1,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFolder,
                      height: 20.v,
                      width: 60.h))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  width: 212.h,
                  margin: EdgeInsets.only(right: 56.h, bottom: 18.v),
                  child: Text("msg_delivered_in_7_working".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyLarge!.copyWith(height: 1.25))))
        ]));
  }

  /// Section Widget
  Widget _buildDdadfRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
            margin: EdgeInsets.only(right: 15.h),
            padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 26.v),
            decoration: AppDecoration.fillGray10001,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.img5d02da5df552836,
                      height: 67.adaptSize,
                      width: 67.adaptSize,
                      margin: EdgeInsets.only(left: 12.h, top: 7.v)),
                  Padding(
                      padding: EdgeInsets.only(top: 2.v, bottom: 9.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_sony_wh_1000xm42".tr,
                                style: CustomTextStyles
                                    .titleMediumSecondaryContainer),
                            SizedBox(height: 4.v),
                            SizedBox(
                                width: 248.h,
                                child: Row(children: [
                                  Container(
                                      width: 37.adaptSize,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 11.h, vertical: 1.v),
                                      decoration: AppDecoration.fillWhiteA
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder20),
                                      child: Text("lbl3".tr,
                                          style: CustomTextStyles
                                              .titleLargePoppins)),
                                  Spacer(flex: 29),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 9.v, bottom: 7.v),
                                      child: Text("lbl_1".tr,
                                          style: theme.textTheme.bodyLarge)),
                                  Spacer(flex: 28),
                                  Container(
                                      width: 37.adaptSize,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.h, vertical: 1.v),
                                      decoration: AppDecoration.fillWhiteA
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder20),
                                      child: Text("lbl2".tr,
                                          style: CustomTextStyles
                                              .titleLargePoppins)),
                                  Spacer(flex: 41),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 9.v, bottom: 7.v),
                                      child: Text("lbl_24_90".tr,
                                          style: CustomTextStyles
                                              .labelLargePoppinsSecondaryContainer))
                                ]))
                          ]))
                ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeTabContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeTabContainerPage:
        return HomeTabContainerPage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
