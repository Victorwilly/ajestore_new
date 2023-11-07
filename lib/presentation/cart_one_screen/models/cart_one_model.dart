// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'productdefaultgrid_item_model.dart';

/// This class defines the variables used in the [cart_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartOneModel extends Equatable {
  CartOneModel({this.productdefaultgridItemList = const []}) {}

  List<ProductdefaultgridItemModel> productdefaultgridItemList;

  CartOneModel copyWith(
      {List<ProductdefaultgridItemModel>? productdefaultgridItemList}) {
    return CartOneModel(
      productdefaultgridItemList:
          productdefaultgridItemList ?? this.productdefaultgridItemList,
    );
  }

  @override
  List<Object?> get props => [productdefaultgridItemList];
}
