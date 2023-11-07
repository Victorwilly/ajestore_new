// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'productdetails_item_model.dart';
import 'productdetails1_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.productdetailsItemList = const [],
    this.productdetails1ItemList = const [],
  }) {}

  List<ProductdetailsItemModel> productdetailsItemList;

  List<Productdetails1ItemModel> productdetails1ItemList;

  HomeModel copyWith({
    List<ProductdetailsItemModel>? productdetailsItemList,
    List<Productdetails1ItemModel>? productdetails1ItemList,
  }) {
    return HomeModel(
      productdetailsItemList:
          productdetailsItemList ?? this.productdetailsItemList,
      productdetails1ItemList:
          productdetails1ItemList ?? this.productdetails1ItemList,
    );
  }

  @override
  List<Object?> get props => [productdetailsItemList, productdetails1ItemList];
}
