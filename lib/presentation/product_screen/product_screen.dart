import 'bloc/product_bloc.dart';
import 'models/product_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/widgets/custom_elevated_button.dart';
import 'package:ajestores/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductBloc>(
        create: (context) =>
            ProductBloc(ProductState(productModelObj: ProductModel()))
              ..add(ProductInitialEvent()),
        child: ProductScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray300,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 53.v),
                    _buildMainStack(context),
                    SizedBox(height: 23.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                          height: 73.adaptSize,
                          width: 73.adaptSize,
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 12.v),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder20),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPw7ypp08kxeqkbrhbggl,
                              height: 49.v,
                              width: 45.h,
                              alignment: Alignment.center)),
                      Container(
                          height: 73.adaptSize,
                          width: 73.adaptSize,
                          margin: EdgeInsets.only(left: 18.h),
                          padding: EdgeInsets.all(8.h),
                          decoration: AppDecoration.outlineDeepOrangeA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder20),
                          child: CustomImageView(
                              imagePath: ImageConstant.img5d02da5df552836,
                              height: 55.adaptSize,
                              width: 55.adaptSize,
                              alignment: Alignment.center)),
                      Container(
                          height: 73.adaptSize,
                          width: 73.adaptSize,
                          margin: EdgeInsets.only(left: 18.h),
                          padding: EdgeInsets.all(8.h),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder20),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgF3f1e4cde7ef052,
                              height: 57.adaptSize,
                              width: 57.adaptSize,
                              alignment: Alignment.center))
                    ]),
                    SizedBox(height: 30.v),
                    _buildProductColumn(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
        height: 363.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 245.adaptSize,
                  width: 245.adaptSize,
                  margin: EdgeInsets.only(bottom: 49.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55.h),
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.whiteA700,
                            appTheme.whiteA700.withOpacity(0)
                          ])))),
          Padding(
              padding: EdgeInsets.only(right: 17.h),
              child: CustomIconButton(
                  height: 47.adaptSize,
                  width: 47.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCarbonShare))),
          Padding(
              padding: EdgeInsets.only(right: 72.h),
              child: CustomIconButton(
                  height: 47.adaptSize,
                  width: 47.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgHeart1WhiteA700))),
          Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: CustomIconButton(
                  height: 47.adaptSize,
                  width: 47.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  alignment: Alignment.topLeft,
                  onTap: () {
                    onTapBtnArrowLeft(context);
                  },
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft))),
          CustomImageView(
              imagePath: ImageConstant.img5d02da5df552836,
              height: 323.adaptSize,
              width: 323.adaptSize,
              alignment: Alignment.bottomCenter),
          CustomImageView(
              imagePath: ImageConstant.imgControler,
              height: 250.v,
              width: 390.h,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 9.v))
        ]));
  }

  /// Section Widget
  Widget _buildProductColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 24.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 6.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.v),
                    child: Text("lbl_free_shipping".tr.toUpperCase(),
                        style: CustomTextStyles.labelLargeGray50001SemiBold)),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgBxsStar,
                    height: 20.adaptSize,
                    width: 20.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text("lbl_4_8".tr,
                        style: CustomTextStyles.titleMedium18)),
                Padding(
                    padding: EdgeInsets.only(left: 3.h, top: 4.v, bottom: 2.v),
                    child: Text("lbl_231".tr,
                        style: CustomTextStyles.labelLargeGray50001))
              ]),
              SizedBox(height: 16.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("lbl_sony_wh_1000xm42".tr,
                      style: CustomTextStyles.titleLargeGray80003)),
              SizedBox(height: 13.v),
              SizedBox(
                  width: 330.h,
                  child: Text("msg_the_intuitive_and".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray50001)),
              SizedBox(height: 15.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text("lbl_4_9992".tr,
                        style: CustomTextStyles.titleLargePrimary_1)),
                Spacer(),
                SizedBox(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.gray800,
                                  borderRadius: BorderRadius.circular(12.h)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.h),
                                  border: Border.all(
                                      color: appTheme.gray800, width: 1.h))))
                    ])),
                Container(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 6.h, top: 3.v, bottom: 3.v),
                    decoration: BoxDecoration(
                        color: appTheme.gray40004,
                        borderRadius: BorderRadius.circular(12.h))),
                Container(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 9.h, top: 3.v, bottom: 3.v),
                    decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        borderRadius: BorderRadius.circular(12.h)))
              ]),
              SizedBox(height: 27.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                    width: 94.h,
                    margin: EdgeInsets.symmetric(vertical: 7.v),
                    padding: EdgeInsets.symmetric(vertical: 3.v),
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder17),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("lbl".tr,
                              style: CustomTextStyles
                                  .titleLargeSFProDisplayGray50001),
                          Text("lbl_1".tr,
                              style: CustomTextStyles.titleMediumGray50001),
                          Text("lbl2".tr,
                              style: CustomTextStyles
                                  .titleLargeSFProDisplayGray50001)
                        ])),
                CustomElevatedButton(
                    width: 211.h,
                    text: "lbl_add_to_cart".tr,
                    buttonStyle: CustomButtonStyles.fillPrimaryTL24,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumWhiteA700SemiBold)
              ])
            ]));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
