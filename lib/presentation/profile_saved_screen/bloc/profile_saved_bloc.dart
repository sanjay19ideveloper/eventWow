import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/profile_saved_screen/models/profile_saved_model.dart';
part 'profile_saved_event.dart';
part 'profile_saved_state.dart';

/// A bloc that manages the state of a ProfileSaved according to the event that is dispatched to it.
class ProfileSavedBloc extends Bloc<ProfileSavedEvent, ProfileSavedState> {
  ProfileSavedBloc(ProfileSavedState initialState) : super(initialState) {
    on<ProfileSavedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSavedInitialEvent event,
    Emitter<ProfileSavedState> emit,
  ) async {}
}
