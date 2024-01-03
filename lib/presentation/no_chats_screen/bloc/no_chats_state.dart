// ignore_for_file: must_be_immutable

part of 'no_chats_bloc.dart';

/// Represents the state of NoChats in the application.
class NoChatsState extends Equatable {
  NoChatsState({this.noChatsModelObj});

  NoChatsModel? noChatsModelObj;

  @override
  List<Object?> get props => [
        noChatsModelObj,
      ];
  NoChatsState copyWith({NoChatsModel? noChatsModelObj}) {
    return NoChatsState(
      noChatsModelObj: noChatsModelObj ?? this.noChatsModelObj,
    );
  }
}
