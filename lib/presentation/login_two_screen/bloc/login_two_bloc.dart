import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ajestores/presentation/login_two_screen/models/login_two_model.dart';
part 'login_two_event.dart';
part 'login_two_state.dart';

/// A bloc that manages the state of a LoginTwo according to the event that is dispatched to it.
class LoginTwoBloc extends Bloc<LoginTwoEvent, LoginTwoState> {
  LoginTwoBloc(LoginTwoState initialState) : super(initialState) {
    on<LoginTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginTwoInitialEvent event,
    Emitter<LoginTwoState> emit,
  ) async {}
}
