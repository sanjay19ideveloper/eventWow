// ignore_for_file: must_be_immutable

part of 'submiited_bloc.dart';

/// Represents the state of Submiited in the application.
class SubmiitedState extends Equatable {
  SubmiitedState({this.submiitedModelObj});

  SubmiitedModel? submiitedModelObj;

  @override
  List<Object?> get props => [
        submiitedModelObj,
      ];
  SubmiitedState copyWith({SubmiitedModel? submiitedModelObj}) {
    return SubmiitedState(
      submiitedModelObj: submiitedModelObj ?? this.submiitedModelObj,
    );
  }
}
