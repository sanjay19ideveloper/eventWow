import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/help_faqs_screen/models/help_faqs_model.dart';
part 'help_faqs_event.dart';
part 'help_faqs_state.dart';

/// A bloc that manages the state of a HelpFaqs according to the event that is dispatched to it.
class HelpFaqsBloc extends Bloc<HelpFaqsEvent, HelpFaqsState> {
  HelpFaqsBloc(HelpFaqsState initialState) : super(initialState) {
    on<HelpFaqsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HelpFaqsInitialEvent event,
    Emitter<HelpFaqsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
