// ignore_for_file: must_be_immutable

part of 'cart_two_bloc.dart';

/// Represents the state of CartTwo in the application.
class CartTwoState extends Equatable {
  CartTwoState({this.cartTwoModelObj});

  CartTwoModel? cartTwoModelObj;

  @override
  List<Object?> get props => [
        cartTwoModelObj,
      ];
  CartTwoState copyWith({CartTwoModel? cartTwoModelObj}) {
    return CartTwoState(
      cartTwoModelObj: cartTwoModelObj ?? this.cartTwoModelObj,
    );
  }
}
