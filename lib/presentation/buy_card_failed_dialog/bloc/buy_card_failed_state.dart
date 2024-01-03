// ignore_for_file: must_be_immutable

part of 'buy_card_failed_bloc.dart';

/// Represents the state of BuyCardFailed in the application.
class BuyCardFailedState extends Equatable {
  BuyCardFailedState({this.buyCardFailedModelObj});

  BuyCardFailedModel? buyCardFailedModelObj;

  @override
  List<Object?> get props => [
        buyCardFailedModelObj,
      ];
  BuyCardFailedState copyWith({BuyCardFailedModel? buyCardFailedModelObj}) {
    return BuyCardFailedState(
      buyCardFailedModelObj:
          buyCardFailedModelObj ?? this.buyCardFailedModelObj,
    );
  }
}
