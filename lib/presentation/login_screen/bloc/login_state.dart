// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.userNameEditTextSectionController,
    this.passwordEditTextSectionController,
    this.emailEditTextSectionController,
    this.loginModelObj,
  });

  TextEditingController? userNameEditTextSectionController;

  TextEditingController? passwordEditTextSectionController;

  TextEditingController? emailEditTextSectionController;

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [
        userNameEditTextSectionController,
        passwordEditTextSectionController,
        emailEditTextSectionController,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? userNameEditTextSectionController,
    TextEditingController? passwordEditTextSectionController,
    TextEditingController? emailEditTextSectionController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      userNameEditTextSectionController: userNameEditTextSectionController ??
          this.userNameEditTextSectionController,
      passwordEditTextSectionController: passwordEditTextSectionController ??
          this.passwordEditTextSectionController,
      emailEditTextSectionController:
          emailEditTextSectionController ?? this.emailEditTextSectionController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
