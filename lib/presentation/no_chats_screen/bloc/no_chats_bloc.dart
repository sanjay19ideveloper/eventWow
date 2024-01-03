import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/no_chats_screen/models/no_chats_model.dart';
part 'no_chats_event.dart';
part 'no_chats_state.dart';

/// A bloc that manages the state of a NoChats according to the event that is dispatched to it.
class NoChatsBloc extends Bloc<NoChatsEvent, NoChatsState> {
  NoChatsBloc(NoChatsState initialState) : super(initialState) {
    on<NoChatsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NoChatsInitialEvent event,
    Emitter<NoChatsState> emit,
  ) async {}
}
