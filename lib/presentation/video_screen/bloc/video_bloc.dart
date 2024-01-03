import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/video_screen/models/video_model.dart';
part 'video_event.dart';
part 'video_state.dart';

/// A bloc that manages the state of a Video according to the event that is dispatched to it.
class VideoBloc extends Bloc<VideoEvent, VideoState> {
  VideoBloc(VideoState initialState) : super(initialState) {
    on<VideoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoInitialEvent event,
    Emitter<VideoState> emit,
  ) async {}
}
