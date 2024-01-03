// ignore_for_file: must_be_immutable

part of 'drafts_one_bloc.dart';

/// Represents the state of DraftsOne in the application.
class DraftsOneState extends Equatable {
  DraftsOneState({this.draftsOneModelObj});

  DraftsOneModel? draftsOneModelObj;

  @override
  List<Object?> get props => [
        draftsOneModelObj,
      ];
  DraftsOneState copyWith({DraftsOneModel? draftsOneModelObj}) {
    return DraftsOneState(
      draftsOneModelObj: draftsOneModelObj ?? this.draftsOneModelObj,
    );
  }
}
