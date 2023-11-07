import '../../../core/app_export.dart';

/// This class is used in the [productdetails1_item_widget] screen.
class Productdetails1ItemModel {
  Productdetails1ItemModel({
    this.productImage,
    this.productName,
    this.productPrice,
    this.id,
  }) {
    productImage = productImage ?? ImageConstant.img9447441f632825;
    productName = productName ?? "Huawei Matebook X 13";
    productPrice = productPrice ?? " 20,999 ";
    id = id ?? "";
  }

  String? productImage;

  String? productName;

  String? productPrice;

  String? id;
}
