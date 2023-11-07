import '../../../core/app_export.dart';

/// This class is used in the [productdetails_item_widget] screen.
class ProductdetailsItemModel {
  ProductdetailsItemModel({
    this.fortyEight,
    this.productImage,
    this.productName,
    this.productPrice,
    this.id,
  }) {
    fortyEight = fortyEight ?? "34%";
    productImage =
        productImage ?? ImageConstant.imgMacbookAirRetinaM1240x16073x115;
    productName = productName ?? "Macbook Air M1";
    productPrice = productPrice ?? " 29,999 ";
    id = id ?? "";
  }

  String? fortyEight;

  String? productImage;

  String? productName;

  String? productPrice;

  String? id;
}
