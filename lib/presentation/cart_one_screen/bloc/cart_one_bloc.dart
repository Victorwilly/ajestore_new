import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productdefaultgrid_item_model.dart';
import 'package:ajestores/presentation/cart_one_screen/models/cart_one_model.dart';
part 'cart_one_event.dart';
part 'cart_one_state.dart';

/// A bloc that manages the state of a CartOne according to the event that is dispatched to it.
class CartOneBloc extends Bloc<CartOneEvent, CartOneState> {
  CartOneBloc(CartOneState initialState) : super(initialState) {
    on<CartOneInitialEvent>(_onInitialize);
  }

  List<ProductdefaultgridItemModel> fillProductdefaultgridItemList() {
    return [
      ProductdefaultgridItemModel(
          fortyEight: "4.8",
          twoHundredThirtyOne: "(231)",
          threeDotTwo: ImageConstant.imgAuGalaxyBuds,
          thirtyTwo: "3.2",
          oraimmoEarB: "Oraimmo Ear b...",
          favourite: ImageConstant.imgLayer51),
      ProductdefaultgridItemModel(
          fortyEight: "3.8",
          twoHundredThirtyOne: "(231)",
          threeDotTwo: ImageConstant.imgAuGalaxyBuds,
          thirtyTwo: "5.2",
          oraimmoEarB: "Oraimmo Ear b...",
          favourite: ImageConstant.imgTwitter),
      ProductdefaultgridItemModel(
          fortyEight: "2.3",
          twoHundredThirtyOne: "(231)",
          threeDotTwo: ImageConstant.imgHuaweiFreebuds,
          thirtyTwo: "1445.2",
          oraimmoEarB: "Free Buds Hwa...",
          favourite: ImageConstant.imgLayer51),
      ProductdefaultgridItemModel(
          fortyEight: "4.1",
          twoHundredThirtyOne: "(231)",
          threeDotTwo: ImageConstant.imgAuGalaxyBuds,
          thirtyTwo: "22.2",
          oraimmoEarB: "Oraimmo Ear b...",
          favourite: ImageConstant.imgLayer51),
      ProductdefaultgridItemModel(
          fortyEight: "4.8",
          twoHundredThirtyOne: "(231)",
          threeDotTwo: ImageConstant.imgAuGalaxyBuds,
          thirtyTwo: "3.2",
          oraimmoEarB: "Oraimmo Ear b...",
          favourite: ImageConstant.imgLayer51),
      ProductdefaultgridItemModel(
          fortyEight: "1.8",
          twoHundredThirtyOne: "(231)",
          threeDotTwo: ImageConstant.imgHuaweiFreebuds,
          thirtyTwo: "3456.2",
          oraimmoEarB: "Free Buds hwa...",
          favourite: ImageConstant.imgLayer51)
    ];
  }

  _onInitialize(
    CartOneInitialEvent event,
    Emitter<CartOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        cartOneModelObj: state.cartOneModelObj?.copyWith(
      productdefaultgridItemList: fillProductdefaultgridItemList(),
    )));
  }
}
