import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/drafts_one_screen/models/drafts_one_model.dart';
part 'drafts_one_event.dart';
part 'drafts_one_state.dart';

/// A bloc that manages the state of a DraftsOne according to the event that is dispatched to it.
class DraftsOneBloc extends Bloc<DraftsOneEvent, DraftsOneState> {
  DraftsOneBloc(DraftsOneState initialState) : super(initialState) {
    on<DraftsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DraftsOneInitialEvent event,
    Emitter<DraftsOneState> emit,
  ) async {}
}
