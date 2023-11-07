import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
      create: (context) => OnboardingBloc(OnboardingState(
        onboardingModelObj: OnboardingModel(),
      ))
        ..add(OnboardingInitialEvent()),
      child: OnboardingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.gray10001,
            body: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
                color: appTheme.gray10001,
                gradient: LinearGradient(
                  begin: Alignment(-0.01, -0.03),
                  end: Alignment(1.02, 1),
                  colors: [
                    appTheme.lightBlueA70001,
                    appTheme.indigoA700,
                  ],
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 541.v,
                      width: 343.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 175.h,
                              margin: EdgeInsets.only(left: 26.h),
                              child: Text(
                                "lbl_aje_stores".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.displayLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 27.h,
                                top: 137.v,
                              ),
                              child: Text(
                                "lbl_cheap".tr,
                                style: theme.textTheme.headlineLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 31.h,
                                top: 172.v,
                              ),
                              child: Text(
                                "msg_affordable_prizes".tr,
                                style:
                                    CustomTextStyles.bodyLargePoppinsWhiteA700,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 130.h,
                                top: 145.v,
                              ),
                              child: Text(
                                "lbl_and".tr,
                                style:
                                    CustomTextStyles.bodyLargePoppinsWhiteA700,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgMacbookAirRetinaM1240x160,
                            height: 158.v,
                            width: 230.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              bottom: 155.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.img5eb4156d7834b2000433266d,
                            height: 165.v,
                            width: 198.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 26.h,
                              bottom: 85.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgWhiteHeroZoom,
                            height: 97.v,
                            width: 146.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 22.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgDCc1,
                            height: 68.v,
                            width: 182.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 57.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgAuGalaxyBuds,
                            height: 85.v,
                            width: 106.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 87.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img5d02da5df552836,
                            height: 148.adaptSize,
                            width: 148.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 188.v),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 31.h,
                                top: 202.v,
                              ),
                              child: Text(
                                "msg_discount_shipping".tr.toUpperCase(),
                                style:
                                    CustomTextStyles.labelLargePoppinsOrange300,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgLightningThund,
                            height: 162.adaptSize,
                            width: 162.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 54.v,
                              right: 18.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 55.v),
                    CustomElevatedButton(
                      text: "lbl_log_in".tr,
                      margin: EdgeInsets.symmetric(horizontal: 29.h),
                      buttonStyle: CustomButtonStyles.fillWhiteA,
                      buttonTextStyle: CustomTextStyles.titleSmallBlueA70001,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
