import '../models/productdetails1_item_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productdetails1ItemWidget extends StatelessWidget {
  Productdetails1ItemWidget(
    this.productdetails1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productdetails1ItemModel productdetails1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 8.v,
      ),
      width: 171.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 100.v,
              width: 135.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillWhiteA,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHeart2,
                    ),
                  ),
                  CustomImageView(
                    imagePath: productdetails1ItemModelObj.productImage,
                    height: 92.v,
                    width: 122.h,
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Text(
            productdetails1ItemModelObj.productName!,
            style: CustomTextStyles.labelMediumGray80004,
          ),
          SizedBox(height: 1.v),
          Text(
            productdetails1ItemModelObj.productPrice!,
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
