import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/drafts_screen/models/drafts_model.dart';
part 'drafts_event.dart';
part 'drafts_state.dart';

/// A bloc that manages the state of a Drafts according to the event that is dispatched to it.
class DraftsBloc extends Bloc<DraftsEvent, DraftsState> {
  DraftsBloc(DraftsState initialState) : super(initialState) {
    on<DraftsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DraftsInitialEvent event,
    Emitter<DraftsState> emit,
  ) async {}
}
