import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/choosed_bottomsheet/models/choosed_model.dart';
part 'choosed_event.dart';
part 'choosed_state.dart';

/// A bloc that manages the state of a Choosed according to the event that is dispatched to it.
class ChoosedBloc extends Bloc<ChoosedEvent, ChoosedState> {
  ChoosedBloc(ChoosedState initialState) : super(initialState) {
    on<ChoosedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChoosedInitialEvent event,
    Emitter<ChoosedState> emit,
  ) async {}
}
