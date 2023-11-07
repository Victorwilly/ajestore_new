import 'bloc/home_tab_container_bloc.dart';
import 'models/home_tab_container_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/presentation/home_page/home_page.dart';
import 'package:ajestores/widgets/app_bar/appbar_image.dart';
import 'package:ajestores/widgets/app_bar/appbar_title_searchview.dart';
import 'package:ajestores/widgets/app_bar/custom_app_bar.dart';
import 'package:ajestores/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeTabContainerPage extends StatefulWidget {
  const HomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTabContainerPageState createState() => HomeTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeTabContainerBloc>(
      create: (context) => HomeTabContainerBloc(HomeTabContainerState(
        homeTabContainerModelObj: HomeTabContainerModel(),
      ))
        ..add(HomeTabContainerInitialEvent()),
      child: HomeTabContainerPage(),
    );
  }
}

class HomeTabContainerPageState extends State<HomeTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildDiscountShipping(context),
              SizedBox(height: 3.v),
              _buildTabview(context),
              SizedBox(
                height: 377.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    HomePage.builder(context),
                    HomePage.builder(context),
                    HomePage.builder(context),
                    HomePage.builder(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: BlocSelector<HomeTabContainerBloc, HomeTabContainerState,
          TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search_products".tr,
            controller: searchController,
          );
        },
      ),
      actions: [
        Container(
          margin: EdgeInsets.fromLTRB(8.h, 4.v, 16.h, 4.v),
          padding: EdgeInsets.symmetric(horizontal: 1.h),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder25,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  margin: EdgeInsets.only(left: 35.h),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1.v),
              AppbarImage(
                imagePath: ImageConstant.imgE9ad324151fa40998b329b97e69c7794,
                margin: EdgeInsets.only(
                  left: 11.h,
                  right: 10.h,
                ),
              ),
              SizedBox(height: 12.v),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDiscountShipping(BuildContext context) {
    return SizedBox(
      height: 205.v,
      width: 358.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.gradientPrimaryToBlueA.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 86.h,
                    child: Text(
                      "lbl_aje_stores".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                  SizedBox(height: 38.v),
                  CustomElevatedButton(
                    height: 19.v,
                    width: 91.h,
                    text: "msg_discount_shipping".tr.toUpperCase(),
                    buttonStyle: CustomButtonStyles.fillWhiteATL9,
                    buttonTextStyle: CustomTextStyles.poppinsDeeppurple900,
                  ),
                  SizedBox(height: 4.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img5eb4156d7834b2000433266d,
            height: 144.v,
            width: 174.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 1.v,
              right: 6.h,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUnnamed1,
            height: 136.adaptSize,
            width: 136.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 79.h),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                bottom: 76.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "lbl_cheap".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "lbl_and".tr,
                          style: CustomTextStyles.bodySmallPoppinsWhiteA700,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "msg_affordable_prizes".tr,
                    style: CustomTextStyles.bodySmallPoppinsWhiteA700,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAuGalaxyBuds,
            height: 86.v,
            width: 108.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 11.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 37.v,
      width: 362.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: Text(
              "lbl_technology".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_fashion".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_sports".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_home".tr,
            ),
          ),
        ],
      ),
    );
  }
}
