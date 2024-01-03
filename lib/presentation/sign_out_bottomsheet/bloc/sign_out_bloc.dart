import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/sign_out_bottomsheet/models/sign_out_model.dart';
part 'sign_out_event.dart';
part 'sign_out_state.dart';

/// A bloc that manages the state of a SignOut according to the event that is dispatched to it.
class SignOutBloc extends Bloc<SignOutEvent, SignOutState> {
  SignOutBloc(SignOutState initialState) : super(initialState) {
    on<SignOutInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignOutInitialEvent event,
    Emitter<SignOutState> emit,
  ) async {}
}
