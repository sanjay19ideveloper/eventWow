import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/all_photos_one_screen/models/all_photos_one_model.dart';
part 'all_photos_one_event.dart';
part 'all_photos_one_state.dart';

/// A bloc that manages the state of a AllPhotosOne according to the event that is dispatched to it.
class AllPhotosOneBloc extends Bloc<AllPhotosOneEvent, AllPhotosOneState> {
  AllPhotosOneBloc(AllPhotosOneState initialState) : super(initialState) {
    on<AllPhotosOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AllPhotosOneInitialEvent event,
    Emitter<AllPhotosOneState> emit,
  ) async {}
}
