import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ajestores/presentation/cart_two_screen/models/cart_two_model.dart';
part 'cart_two_event.dart';
part 'cart_two_state.dart';

/// A bloc that manages the state of a CartTwo according to the event that is dispatched to it.
class CartTwoBloc extends Bloc<CartTwoEvent, CartTwoState> {
  CartTwoBloc(CartTwoState initialState) : super(initialState) {
    on<CartTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CartTwoInitialEvent event,
    Emitter<CartTwoState> emit,
  ) async {}
}
