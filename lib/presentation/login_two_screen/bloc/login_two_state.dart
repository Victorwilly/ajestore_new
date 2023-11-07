// ignore_for_file: must_be_immutable

part of 'login_two_bloc.dart';

/// Represents the state of LoginTwo in the application.
class LoginTwoState extends Equatable {
  LoginTwoState({this.loginTwoModelObj});

  LoginTwoModel? loginTwoModelObj;

  @override
  List<Object?> get props => [
        loginTwoModelObj,
      ];
  LoginTwoState copyWith({LoginTwoModel? loginTwoModelObj}) {
    return LoginTwoState(
      loginTwoModelObj: loginTwoModelObj ?? this.loginTwoModelObj,
    );
  }
}
