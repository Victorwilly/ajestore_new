// ignore_for_file: must_be_immutable

part of 'login_one_bloc.dart';

/// Represents the state of LoginOne in the application.
class LoginOneState extends Equatable {
  LoginOneState({
    this.userNameController,
    this.passwordController,
    this.loginOneModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  LoginOneModel? loginOneModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        loginOneModelObj,
      ];
  LoginOneState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    LoginOneModel? loginOneModelObj,
  }) {
    return LoginOneState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      loginOneModelObj: loginOneModelObj ?? this.loginOneModelObj,
    );
  }
}
