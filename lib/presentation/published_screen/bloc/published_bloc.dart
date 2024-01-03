import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/published_screen/models/published_model.dart';
part 'published_event.dart';
part 'published_state.dart';

/// A bloc that manages the state of a Published according to the event that is dispatched to it.
class PublishedBloc extends Bloc<PublishedEvent, PublishedState> {
  PublishedBloc(PublishedState initialState) : super(initialState) {
    on<PublishedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PublishedInitialEvent event,
    Emitter<PublishedState> emit,
  ) async {}
}
