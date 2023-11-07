import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productdetails_item_model.dart';
import '../models/productdetails1_item_model.dart';
import 'package:ajestores/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      productdetailsItemList: fillProductdetailsItemList(),
      productdetails1ItemList: fillProductdetails1ItemList(),
    )));
  }

  List<ProductdetailsItemModel> fillProductdetailsItemList() {
    return [
      ProductdetailsItemModel(
          fortyEight: "34%",
          productImage: ImageConstant.imgMacbookAirRetinaM1240x16073x115,
          productName: "Macbook Air M1",
          productPrice: " 29,999 "),
      ProductdetailsItemModel(
          fortyEight: "12%",
          productImage: ImageConstant.img5d02da5df552836,
          productName: "Sony WH/1000XM4",
          productPrice: " 4,999 "),
      ProductdetailsItemModel(
          fortyEight: "36%",
          productImage: ImageConstant.imgHuaweiFreebuds,
          productName: "FreeBuds Huawei",
          productPrice: " 1,499 ")
    ];
  }

  List<Productdetails1ItemModel> fillProductdetails1ItemList() {
    return [
      Productdetails1ItemModel(
          productImage: ImageConstant.img9447441f632825,
          productName: "Huawei Matebook X 13",
          productPrice: " 20,999 ")
    ];
  }
}
