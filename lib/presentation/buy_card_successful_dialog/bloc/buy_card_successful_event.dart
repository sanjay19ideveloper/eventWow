// ignore_for_file: must_be_immutable

part of 'buy_card_successful_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BuyCardSuccessful widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BuyCardSuccessfulEvent extends Equatable {}

/// Event that is dispatched when the BuyCardSuccessful widget is first created.
class BuyCardSuccessfulInitialEvent extends BuyCardSuccessfulEvent {
  @override
  List<Object?> get props => [];
}
