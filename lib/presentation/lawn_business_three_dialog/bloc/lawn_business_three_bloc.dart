import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/lawn_business_three_dialog/models/lawn_business_three_model.dart';
part 'lawn_business_three_event.dart';
part 'lawn_business_three_state.dart';

/// A bloc that manages the state of a LawnBusinessThree according to the event that is dispatched to it.
class LawnBusinessThreeBloc
    extends Bloc<LawnBusinessThreeEvent, LawnBusinessThreeState> {
  LawnBusinessThreeBloc(LawnBusinessThreeState initialState)
      : super(initialState) {
    on<LawnBusinessThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LawnBusinessThreeInitialEvent event,
    Emitter<LawnBusinessThreeState> emit,
  ) async {}
}
