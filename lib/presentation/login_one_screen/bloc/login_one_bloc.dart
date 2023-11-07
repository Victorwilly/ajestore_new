import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ajestores/presentation/login_one_screen/models/login_one_model.dart';
part 'login_one_event.dart';
part 'login_one_state.dart';

/// A bloc that manages the state of a LoginOne according to the event that is dispatched to it.
class LoginOneBloc extends Bloc<LoginOneEvent, LoginOneState> {
  LoginOneBloc(LoginOneState initialState) : super(initialState) {
    on<LoginOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginOneInitialEvent event,
    Emitter<LoginOneState> emit,
  ) async {
    emit(state.copyWith(
        userNameController: TextEditingController(),
        passwordController: TextEditingController()));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.loginScreen,
      );
    });
  }
}
