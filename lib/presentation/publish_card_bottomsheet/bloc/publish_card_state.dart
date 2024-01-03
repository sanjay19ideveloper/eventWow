// ignore_for_file: must_be_immutable

part of 'publish_card_bloc.dart';

/// Represents the state of PublishCard in the application.
class PublishCardState extends Equatable {
  PublishCardState({this.publishCardModelObj});

  PublishCardModel? publishCardModelObj;

  @override
  List<Object?> get props => [
        publishCardModelObj,
      ];
  PublishCardState copyWith({PublishCardModel? publishCardModelObj}) {
    return PublishCardState(
      publishCardModelObj: publishCardModelObj ?? this.publishCardModelObj,
    );
  }
}
