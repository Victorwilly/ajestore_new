import '../models/productdetails_item_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductdetailsItemWidget extends StatelessWidget {
  ProductdetailsItemWidget(
    this.productdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductdetailsItemModel productdetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 128.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 27.h,
            margin: EdgeInsets.only(left: 5.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              productdetailsItemModelObj.fortyEight!,
              style: CustomTextStyles.montserratPrimaryContainer,
            ),
          ),
          SizedBox(height: 10.v),
          CustomImageView(
            imagePath: productdetailsItemModelObj.productImage,
            height: 73.v,
            width: 115.h,
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              productdetailsItemModelObj.productName!,
              style: theme.textTheme.labelSmall,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              productdetailsItemModelObj.productPrice!,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
