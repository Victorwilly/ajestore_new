import '../../../core/app_export.dart';

/// This class is used in the [productdefaultgrid_item_widget] screen.
class ProductdefaultgridItemModel {
  ProductdefaultgridItemModel({
    this.fortyEight,
    this.twoHundredThirtyOne,
    this.threeDotTwo,
    this.thirtyTwo,
    this.oraimmoEarB,
    this.favourite,
    this.id,
  }) {
    fortyEight = fortyEight ?? "4.8";
    twoHundredThirtyOne = twoHundredThirtyOne ?? "(231)";
    threeDotTwo = threeDotTwo ?? ImageConstant.imgAuGalaxyBuds;
    thirtyTwo = thirtyTwo ?? "3.2";
    oraimmoEarB = oraimmoEarB ?? "Oraimmo Ear b...";
    favourite = favourite ?? ImageConstant.imgLayer51;
    id = id ?? "";
  }

  String? fortyEight;

  String? twoHundredThirtyOne;

  String? threeDotTwo;

  String? thirtyTwo;

  String? oraimmoEarB;

  String? favourite;

  String? id;
}
