// ignore_for_file: must_be_immutable

part of 'chats_one_bloc.dart';

/// Represents the state of ChatsOne in the application.
class ChatsOneState extends Equatable {
  ChatsOneState({
    this.messageController,
    this.chatsOneModelObj,
  });

  TextEditingController? messageController;

  ChatsOneModel? chatsOneModelObj;

  @override
  List<Object?> get props => [
        messageController,
        chatsOneModelObj,
      ];
  ChatsOneState copyWith({
    TextEditingController? messageController,
    ChatsOneModel? chatsOneModelObj,
  }) {
    return ChatsOneState(
      messageController: messageController ?? this.messageController,
      chatsOneModelObj: chatsOneModelObj ?? this.chatsOneModelObj,
    );
  }
}
