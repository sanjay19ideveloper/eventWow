// ignore_for_file: must_be_immutable

part of 'share_the_app_bloc.dart';

/// Represents the state of ShareTheApp in the application.
class ShareTheAppState extends Equatable {
  ShareTheAppState({this.shareTheAppModelObj});

  ShareTheAppModel? shareTheAppModelObj;

  @override
  List<Object?> get props => [
        shareTheAppModelObj,
      ];
  ShareTheAppState copyWith({ShareTheAppModel? shareTheAppModelObj}) {
    return ShareTheAppState(
      shareTheAppModelObj: shareTheAppModelObj ?? this.shareTheAppModelObj,
    );
  }
}
