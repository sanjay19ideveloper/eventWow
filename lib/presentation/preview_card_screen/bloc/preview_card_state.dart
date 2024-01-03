// ignore_for_file: must_be_immutable

part of 'preview_card_bloc.dart';

/// Represents the state of PreviewCard in the application.
class PreviewCardState extends Equatable {
  PreviewCardState({this.previewCardModelObj});

  PreviewCardModel? previewCardModelObj;

  @override
  List<Object?> get props => [
        previewCardModelObj,
      ];
  PreviewCardState copyWith({PreviewCardModel? previewCardModelObj}) {
    return PreviewCardState(
      previewCardModelObj: previewCardModelObj ?? this.previewCardModelObj,
    );
  }
}
