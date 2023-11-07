import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ajestores/presentation/cart_screen/models/cart_model.dart';
part 'cart_event.dart';
part 'cart_state.dart';

/// A bloc that manages the state of a Cart according to the event that is dispatched to it.
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(CartState initialState) : super(initialState) {
    on<CartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CartInitialEvent event,
    Emitter<CartState> emit,
  ) async {}
}
