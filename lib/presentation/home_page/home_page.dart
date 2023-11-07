import '../home_page/widgets/productdetails1_item_widget.dart';
import '../home_page/widgets/productdetails_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/productdetails1_item_model.dart';
import 'models/productdetails_item_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray10001,
          child: Column(
            children: [
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_hot_sales".tr,
                      style: CustomTextStyles.titleMediumGray80004,
                    ),
                    SizedBox(height: 8.v),
                    SizedBox(
                      height: 148.v,
                      child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                        selector: (state) => state.homeModelObj,
                        builder: (context, homeModelObj) {
                          return ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: 12.h,
                              );
                            },
                            itemCount:
                                homeModelObj?.productdetailsItemList.length ??
                                    0,
                            itemBuilder: (context, index) {
                              ProductdetailsItemModel model =
                                  homeModelObj?.productdetailsItemList[index] ??
                                      ProductdetailsItemModel();
                              return ProductdetailsItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Text(
                      "lbl_recently_viewed".tr,
                      style: CustomTextStyles.titleMediumGray80004,
                    ),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10.v),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 28.v),
                                SizedBox(
                                  height: 131.v,
                                  child: BlocSelector<HomeBloc, HomeState,
                                      HomeModel?>(
                                    selector: (state) => state.homeModelObj,
                                    builder: (context, homeModelObj) {
                                      return ListView.separated(
                                        padding: EdgeInsets.only(left: 24.h),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (
                                          context,
                                          index,
                                        ) {
                                          return SizedBox(
                                            width: 12.h,
                                          );
                                        },
                                        itemCount: homeModelObj
                                                ?.productdetails1ItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Productdetails1ItemModel model =
                                              homeModelObj?.productdetails1ItemList[
                                                      index] ??
                                                  Productdetails1ItemModel();
                                          return Productdetails1ItemWidget(
                                            model,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 179.v,
                            width: 182.h,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 6.h),
                                    padding: EdgeInsets.all(10.h),
                                    decoration:
                                        AppDecoration.fillLightBlueA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          padding: EdgeInsets.all(5.h),
                                          decoration:
                                              IconButtonStyleHelper.fillWhiteA,
                                          alignment: Alignment.centerRight,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgHeart2,
                                          ),
                                        ),
                                        SizedBox(height: 77.v),
                                        Text(
                                          "lbl_alexa_home".tr,
                                          style: CustomTextStyles
                                              .labelMediumGray80004,
                                        ),
                                        SizedBox(height: 1.v),
                                        Text(
                                          "lbl_999".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                        SizedBox(height: 27.v),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgDCc1,
                                  height: 68.v,
                                  width: 182.h,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 34.v),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
