import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/ratings_screen/models/ratings_model.dart';
part 'ratings_event.dart';
part 'ratings_state.dart';

/// A bloc that manages the state of a Ratings according to the event that is dispatched to it.
class RatingsBloc extends Bloc<RatingsEvent, RatingsState> {
  RatingsBloc(RatingsState initialState) : super(initialState) {
    on<RatingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RatingsInitialEvent event,
    Emitter<RatingsState> emit,
  ) async {}
}
