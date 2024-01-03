// ignore_for_file: must_be_immutable

part of 'share_your_views_bloc.dart';

/// Represents the state of ShareYourViews in the application.
class ShareYourViewsState extends Equatable {
  ShareYourViewsState({
    this.writeherevalueController,
    this.shareYourViewsModelObj,
  });

  TextEditingController? writeherevalueController;

  ShareYourViewsModel? shareYourViewsModelObj;

  @override
  List<Object?> get props => [
        writeherevalueController,
        shareYourViewsModelObj,
      ];
  ShareYourViewsState copyWith({
    TextEditingController? writeherevalueController,
    ShareYourViewsModel? shareYourViewsModelObj,
  }) {
    return ShareYourViewsState(
      writeherevalueController:
          writeherevalueController ?? this.writeherevalueController,
      shareYourViewsModelObj:
          shareYourViewsModelObj ?? this.shareYourViewsModelObj,
    );
  }
}
