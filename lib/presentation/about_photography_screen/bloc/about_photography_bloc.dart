import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/about_photography_screen/models/about_photography_model.dart';
part 'about_photography_event.dart';
part 'about_photography_state.dart';

/// A bloc that manages the state of a AboutPhotography according to the event that is dispatched to it.
class AboutPhotographyBloc
    extends Bloc<AboutPhotographyEvent, AboutPhotographyState> {
  AboutPhotographyBloc(AboutPhotographyState initialState)
      : super(initialState) {
    on<AboutPhotographyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AboutPhotographyInitialEvent event,
    Emitter<AboutPhotographyState> emit,
  ) async {}
}
