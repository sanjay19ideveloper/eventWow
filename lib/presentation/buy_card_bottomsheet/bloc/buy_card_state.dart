// ignore_for_file: must_be_immutable

part of 'buy_card_bloc.dart';

/// Represents the state of BuyCard in the application.
class BuyCardState extends Equatable {
  BuyCardState({this.buyCardModelObj});

  BuyCardModel? buyCardModelObj;

  @override
  List<Object?> get props => [
        buyCardModelObj,
      ];
  BuyCardState copyWith({BuyCardModel? buyCardModelObj}) {
    return BuyCardState(
      buyCardModelObj: buyCardModelObj ?? this.buyCardModelObj,
    );
  }
}
