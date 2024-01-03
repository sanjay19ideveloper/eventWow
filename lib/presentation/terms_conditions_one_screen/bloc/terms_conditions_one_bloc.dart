import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/terms_conditions_one_screen/models/terms_conditions_one_model.dart';
part 'terms_conditions_one_event.dart';
part 'terms_conditions_one_state.dart';

/// A bloc that manages the state of a TermsConditionsOne according to the event that is dispatched to it.
class TermsConditionsOneBloc
    extends Bloc<TermsConditionsOneEvent, TermsConditionsOneState> {
  TermsConditionsOneBloc(TermsConditionsOneState initialState)
      : super(initialState) {
    on<TermsConditionsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TermsConditionsOneInitialEvent event,
    Emitter<TermsConditionsOneState> emit,
  ) async {}
}
