// ignore_for_file: must_be_immutable

part of 'buy_card_successful_bloc.dart';

/// Represents the state of BuyCardSuccessful in the application.
class BuyCardSuccessfulState extends Equatable {
  BuyCardSuccessfulState({this.buyCardSuccessfulModelObj});

  BuyCardSuccessfulModel? buyCardSuccessfulModelObj;

  @override
  List<Object?> get props => [
        buyCardSuccessfulModelObj,
      ];
  BuyCardSuccessfulState copyWith(
      {BuyCardSuccessfulModel? buyCardSuccessfulModelObj}) {
    return BuyCardSuccessfulState(
      buyCardSuccessfulModelObj:
          buyCardSuccessfulModelObj ?? this.buyCardSuccessfulModelObj,
    );
  }
}
