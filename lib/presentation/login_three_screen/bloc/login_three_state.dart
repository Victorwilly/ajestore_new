// ignore_for_file: must_be_immutable

part of 'login_three_bloc.dart';

/// Represents the state of LoginThree in the application.
class LoginThreeState extends Equatable {
  LoginThreeState({
    this.addressController,
    this.loginThreeModelObj,
  });

  TextEditingController? addressController;

  LoginThreeModel? loginThreeModelObj;

  @override
  List<Object?> get props => [
        addressController,
        loginThreeModelObj,
      ];
  LoginThreeState copyWith({
    TextEditingController? addressController,
    LoginThreeModel? loginThreeModelObj,
  }) {
    return LoginThreeState(
      addressController: addressController ?? this.addressController,
      loginThreeModelObj: loginThreeModelObj ?? this.loginThreeModelObj,
    );
  }
}
