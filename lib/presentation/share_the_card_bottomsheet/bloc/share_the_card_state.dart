// ignore_for_file: must_be_immutable

part of 'share_the_card_bloc.dart';

/// Represents the state of ShareTheCard in the application.
class ShareTheCardState extends Equatable {
  ShareTheCardState({
    this.messageController,
    this.shareTheCardModelObj,
  });

  TextEditingController? messageController;

  ShareTheCardModel? shareTheCardModelObj;

  @override
  List<Object?> get props => [
        messageController,
        shareTheCardModelObj,
      ];
  ShareTheCardState copyWith({
    TextEditingController? messageController,
    ShareTheCardModel? shareTheCardModelObj,
  }) {
    return ShareTheCardState(
      messageController: messageController ?? this.messageController,
      shareTheCardModelObj: shareTheCardModelObj ?? this.shareTheCardModelObj,
    );
  }
}
