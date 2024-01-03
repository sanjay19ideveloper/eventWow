import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/chats_one_screen/models/chats_one_model.dart';
part 'chats_one_event.dart';
part 'chats_one_state.dart';

/// A bloc that manages the state of a ChatsOne according to the event that is dispatched to it.
class ChatsOneBloc extends Bloc<ChatsOneEvent, ChatsOneState> {
  ChatsOneBloc(ChatsOneState initialState) : super(initialState) {
    on<ChatsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatsOneInitialEvent event,
    Emitter<ChatsOneState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
    ));
  }
}
