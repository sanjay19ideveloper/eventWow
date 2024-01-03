import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/faq_screen/models/faq_model.dart';
part 'faq_event.dart';
part 'faq_state.dart';

/// A bloc that manages the state of a Faq according to the event that is dispatched to it.
class FaqBloc extends Bloc<FaqEvent, FaqState> {
  FaqBloc(FaqState initialState) : super(initialState) {
    on<FaqInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<FaqState> emit,
  ) {
    emit(state.copyWith(
      icon: event.value,
    ));
  }

  _onInitialize(
    FaqInitialEvent event,
    Emitter<FaqState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      icon: false,
    ));
  }
}
