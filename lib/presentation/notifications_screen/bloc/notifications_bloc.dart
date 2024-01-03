import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile7_item_model.dart';
import 'package:sanjay_s_application2/presentation/notifications_screen/models/notifications_model.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

/// A bloc that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc(NotificationsState initialState) : super(initialState) {
    on<NotificationsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationsInitialEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    emit(state.copyWith(
        notificationsModelObj: state.notificationsModelObj?.copyWith(
      userprofile7ItemList: fillUserprofile7ItemList(),
    )));
  }

  List<Userprofile7ItemModel> fillUserprofile7ItemList() {
    return [
      Userprofile7ItemModel(timeAgo: "1 hr ago"),
      Userprofile7ItemModel(timeAgo: "9 hr ago"),
      Userprofile7ItemModel(timeAgo: "1 hr ago"),
      Userprofile7ItemModel(timeAgo: "9 hr ago"),
      Userprofile7ItemModel(timeAgo: "1 hr ago"),
      Userprofile7ItemModel(timeAgo: "9 hr ago")
    ];
  }
}
