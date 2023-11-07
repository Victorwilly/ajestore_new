import 'bloc/cart_bloc.dart';
import 'models/cart_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/presentation/home_tab_container_page/home_tab_container_page.dart';
import 'package:ajestores/widgets/custom_bottom_bar.dart';
import 'package:ajestores/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => CartBloc(CartState(
        cartModelObj: CartModel(),
      ))
        ..add(CartInitialEvent()),
      child: CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(42.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 79.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle5,
                    height: 209.v,
                    width: 210.h,
                    radius: BorderRadius.circular(
                      104.h,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    "lbl_kavousy_nezjad".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 7.v),
                  CustomElevatedButton(
                    height: 38.v,
                    width: 113.h,
                    text: "lbl_view_orders".tr,
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: CustomTextStyles.labelLargePrimary,
                  ),
                  SizedBox(height: 32.v),
                  _buildHome(
                    context,
                    userImage: ImageConstant.imgUserGray500,
                    changeAddress: "lbl_profile_info".tr,
                  ),
                  SizedBox(height: 15.v),
                  _buildHome(
                    context,
                    userImage: ImageConstant.imgHome,
                    changeAddress: "lbl_change_address".tr,
                  ),
                  SizedBox(height: 90.v),
                  Text(
                    "lbl_log_out".tr,
                    style: CustomTextStyles.labelLargeRedA700,
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildHome(
    BuildContext context, {
    required String userImage,
    required String changeAddress,
  }) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 17.h,
              top: 16.v,
              bottom: 15.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 20.v,
              bottom: 16.v,
            ),
            child: Text(
              changeAddress,
              style: CustomTextStyles.titleSmallGray500.copyWith(
                color: appTheme.gray500,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 55.v,
            width: 67.h,
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 26.v,
            ),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.customBorderLR30,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgVector3,
              height: 1.v,
              width: 19.h,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
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
}
