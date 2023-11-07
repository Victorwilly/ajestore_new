// ignore_for_file: must_be_immutable

part of 'checkout_bloc.dart';

/// Represents the state of Checkout in the application.
class CheckoutState extends Equatable {
  CheckoutState({
    this.shippingcostController,
    this.checkoutModelObj,
  });

  TextEditingController? shippingcostController;

  CheckoutModel? checkoutModelObj;

  @override
  List<Object?> get props => [
        shippingcostController,
        checkoutModelObj,
      ];
  CheckoutState copyWith({
    TextEditingController? shippingcostController,
    CheckoutModel? checkoutModelObj,
  }) {
    return CheckoutState(
      shippingcostController:
          shippingcostController ?? this.shippingcostController,
      checkoutModelObj: checkoutModelObj ?? this.checkoutModelObj,
    );
  }
}
