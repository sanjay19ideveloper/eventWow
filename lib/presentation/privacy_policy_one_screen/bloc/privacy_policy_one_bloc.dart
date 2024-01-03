import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/privacy_policy_one_screen/models/privacy_policy_one_model.dart';
part 'privacy_policy_one_event.dart';
part 'privacy_policy_one_state.dart';

/// A bloc that manages the state of a PrivacyPolicyOne according to the event that is dispatched to it.
class PrivacyPolicyOneBloc
    extends Bloc<PrivacyPolicyOneEvent, PrivacyPolicyOneState> {
  PrivacyPolicyOneBloc(PrivacyPolicyOneState initialState)
      : super(initialState) {
    on<PrivacyPolicyOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PrivacyPolicyOneInitialEvent event,
    Emitter<PrivacyPolicyOneState> emit,
  ) async {}
}
