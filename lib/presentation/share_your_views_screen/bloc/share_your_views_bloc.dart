import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/share_your_views_screen/models/share_your_views_model.dart';
part 'share_your_views_event.dart';
part 'share_your_views_state.dart';

/// A bloc that manages the state of a ShareYourViews according to the event that is dispatched to it.
class ShareYourViewsBloc
    extends Bloc<ShareYourViewsEvent, ShareYourViewsState> {
  ShareYourViewsBloc(ShareYourViewsState initialState) : super(initialState) {
    on<ShareYourViewsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShareYourViewsInitialEvent event,
    Emitter<ShareYourViewsState> emit,
  ) async {
    emit(state.copyWith(
      writeherevalueController: TextEditingController(),
    ));
  }
}
