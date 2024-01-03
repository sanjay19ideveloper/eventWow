import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/permissions_screen/models/permissions_model.dart';
part 'permissions_event.dart';
part 'permissions_state.dart';

/// A bloc that manages the state of a Permissions according to the event that is dispatched to it.
class PermissionsBloc extends Bloc<PermissionsEvent, PermissionsState> {
  PermissionsBloc(PermissionsState initialState) : super(initialState) {
    on<PermissionsInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeSwitch2Event>(_changeSwitch2);
    on<ChangeSwitch3Event>(_changeSwitch3);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<PermissionsState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<PermissionsState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  _changeSwitch2(
    ChangeSwitch2Event event,
    Emitter<PermissionsState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch2: event.value,
    ));
  }

  _changeSwitch3(
    ChangeSwitch3Event event,
    Emitter<PermissionsState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch3: event.value,
    ));
  }

  _onInitialize(
    PermissionsInitialEvent event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
      isSelectedSwitch2: false,
      isSelectedSwitch3: false,
    ));
  }
}
