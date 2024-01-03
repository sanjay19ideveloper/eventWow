import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/userprofile11_item_model.dart';import 'package:sanjay_s_application2/presentation/chats_screen/models/chats_model.dart';part 'chats_event.dart';part 'chats_state.dart';/// A bloc that manages the state of a Chats according to the event that is dispatched to it.
class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {ChatsBloc(ChatsState initialState) : super(initialState) { on<ChatsInitialEvent>(_onInitialize); }

_onInitialize(ChatsInitialEvent event, Emitter<ChatsState> emit, ) async  { emit(state.copyWith(chatsModelObj: state.chatsModelObj?.copyWith(userprofile11ItemList: fillUserprofile11ItemList()))); } 
List<Userprofile11ItemModel> fillUserprofile11ItemList() { return [Userprofile11ItemModel(username: "Alex Linderson", message: "How are you today?", timeAgo: "2 min ago"), Userprofile11ItemModel(username: "Alex Linderson", message: "How are you today?", timeAgo: "2 min ago")]; } 
 }
