// ignore_for_file: must_be_immutable

part of 'cart_one_bloc.dart';

/// Represents the state of CartOne in the application.
class CartOneState extends Equatable {
  CartOneState({
    this.searchController,
    this.cartOneModelObj,
  });

  TextEditingController? searchController;

  CartOneModel? cartOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        cartOneModelObj,
      ];
  CartOneState copyWith({
    TextEditingController? searchController,
    CartOneModel? cartOneModelObj,
  }) {
    return CartOneState(
      searchController: searchController ?? this.searchController,
      cartOneModelObj: cartOneModelObj ?? this.cartOneModelObj,
    );
  }
}
