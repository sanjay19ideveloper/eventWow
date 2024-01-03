// ignore_for_file: must_be_immutable

part of 'you_want_to_choose_bloc.dart';

/// Represents the state of YouWantToChoose in the application.
class YouWantToChooseState extends Equatable {
  YouWantToChooseState({this.youWantToChooseModelObj});

  YouWantToChooseModel? youWantToChooseModelObj;

  @override
  List<Object?> get props => [
        youWantToChooseModelObj,
      ];
  YouWantToChooseState copyWith(
      {YouWantToChooseModel? youWantToChooseModelObj}) {
    return YouWantToChooseState(
      youWantToChooseModelObj:
          youWantToChooseModelObj ?? this.youWantToChooseModelObj,
    );
  }
}
