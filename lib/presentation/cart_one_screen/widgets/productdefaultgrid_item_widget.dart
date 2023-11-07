import '../models/productdefaultgrid_item_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class ProductdefaultgridItemWidget extends StatelessWidget {
  ProductdefaultgridItemWidget(
    this.productdefaultgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductdefaultgridItemModel productdefaultgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder10,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgProductDefault,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBxsStar,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Text(
                productdefaultgridItemModelObj.fortyEight!,
                style: theme.textTheme.titleMedium,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 2.h,
                  top: 4.v,
                  bottom: 2.v,
                ),
                child: Text(
                  productdefaultgridItemModelObj.twoHundredThirtyOne!,
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          CustomImageView(
            imagePath: productdefaultgridItemModelObj.threeDotTwo,
            height: 54.v,
            width: 68.h,
            alignment: Alignment.center,
          ),
          SizedBox(height: 19.v),
          Text(
            productdefaultgridItemModelObj.thirtyTwo!,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 2.v),
          Text(
            productdefaultgridItemModelObj.oraimmoEarB!,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 5.v),
          CustomIconButton(
            height: 38.adaptSize,
            width: 38.adaptSize,
            padding: EdgeInsets.all(8.h),
            alignment: Alignment.centerRight,
            child: CustomImageView(
              imagePath: productdefaultgridItemModelObj.favourite,
            ),
          ),
        ],
      ),
    );
  }
}
