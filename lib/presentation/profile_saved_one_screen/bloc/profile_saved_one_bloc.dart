import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/profile_saved_one_screen/models/profile_saved_one_model.dart';
part 'profile_saved_one_event.dart';
part 'profile_saved_one_state.dart';

/// A bloc that manages the state of a ProfileSavedOne according to the event that is dispatched to it.
class ProfileSavedOneBloc
    extends Bloc<ProfileSavedOneEvent, ProfileSavedOneState> {
  ProfileSavedOneBloc(ProfileSavedOneState initialState) : super(initialState) {
    on<ProfileSavedOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSavedOneInitialEvent event,
    Emitter<ProfileSavedOneState> emit,
  ) async {}
}
