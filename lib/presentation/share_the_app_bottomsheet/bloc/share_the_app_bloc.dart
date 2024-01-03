import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/share_the_app_bottomsheet/models/share_the_app_model.dart';
part 'share_the_app_event.dart';
part 'share_the_app_state.dart';

/// A bloc that manages the state of a ShareTheApp according to the event that is dispatched to it.
class ShareTheAppBloc extends Bloc<ShareTheAppEvent, ShareTheAppState> {
  ShareTheAppBloc(ShareTheAppState initialState) : super(initialState) {
    on<ShareTheAppInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShareTheAppInitialEvent event,
    Emitter<ShareTheAppState> emit,
  ) async {}
}
