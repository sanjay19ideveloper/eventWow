import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/submiited_screen/models/submiited_model.dart';
part 'submiited_event.dart';
part 'submiited_state.dart';

/// A bloc that manages the state of a Submiited according to the event that is dispatched to it.
class SubmiitedBloc extends Bloc<SubmiitedEvent, SubmiitedState> {
  SubmiitedBloc(SubmiitedState initialState) : super(initialState) {
    on<SubmiitedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SubmiitedInitialEvent event,
    Emitter<SubmiitedState> emit,
  ) async {}
}
