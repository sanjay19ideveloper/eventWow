import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/terms_conditions_screen/models/terms_conditions_model.dart';
part 'terms_conditions_event.dart';
part 'terms_conditions_state.dart';

/// A bloc that manages the state of a TermsConditions according to the event that is dispatched to it.
class TermsConditionsBloc
    extends Bloc<TermsConditionsEvent, TermsConditionsState> {
  TermsConditionsBloc(TermsConditionsState initialState) : super(initialState) {
    on<TermsConditionsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TermsConditionsInitialEvent event,
    Emitter<TermsConditionsState> emit,
  ) async {}
}
