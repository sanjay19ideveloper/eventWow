import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/lawn_business_one_dialog/models/lawn_business_one_model.dart';
part 'lawn_business_one_event.dart';
part 'lawn_business_one_state.dart';

/// A bloc that manages the state of a LawnBusinessOne according to the event that is dispatched to it.
class LawnBusinessOneBloc
    extends Bloc<LawnBusinessOneEvent, LawnBusinessOneState> {
  LawnBusinessOneBloc(LawnBusinessOneState initialState) : super(initialState) {
    on<LawnBusinessOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LawnBusinessOneInitialEvent event,
    Emitter<LawnBusinessOneState> emit,
  ) async {}
}
