import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/rate_us_screen/models/rate_us_model.dart';
part 'rate_us_event.dart';
part 'rate_us_state.dart';

/// A bloc that manages the state of a RateUs according to the event that is dispatched to it.
class RateUsBloc extends Bloc<RateUsEvent, RateUsState> {
  RateUsBloc(RateUsState initialState) : super(initialState) {
    on<RateUsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RateUsInitialEvent event,
    Emitter<RateUsState> emit,
  ) async {
    emit(state.copyWith(
      writeherevalueController: TextEditingController(),
    ));
  }
}
