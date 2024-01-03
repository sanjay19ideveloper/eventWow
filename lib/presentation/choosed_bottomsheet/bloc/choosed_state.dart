// ignore_for_file: must_be_immutable

part of 'choosed_bloc.dart';

/// Represents the state of Choosed in the application.
class ChoosedState extends Equatable {
  ChoosedState({this.choosedModelObj});

  ChoosedModel? choosedModelObj;

  @override
  List<Object?> get props => [
        choosedModelObj,
      ];
  ChoosedState copyWith({ChoosedModel? choosedModelObj}) {
    return ChoosedState(
      choosedModelObj: choosedModelObj ?? this.choosedModelObj,
    );
  }
}
