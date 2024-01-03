// ignore_for_file: must_be_immutable

part of 'drafts_bloc.dart';

/// Represents the state of Drafts in the application.
class DraftsState extends Equatable {
  DraftsState({this.draftsModelObj});

  DraftsModel? draftsModelObj;

  @override
  List<Object?> get props => [
        draftsModelObj,
      ];
  DraftsState copyWith({DraftsModel? draftsModelObj}) {
    return DraftsState(
      draftsModelObj: draftsModelObj ?? this.draftsModelObj,
    );
  }
}
