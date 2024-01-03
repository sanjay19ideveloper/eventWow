// ignore_for_file: must_be_immutable

part of 'buy_card_failed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BuyCardFailed widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BuyCardFailedEvent extends Equatable {}

/// Event that is dispatched when the BuyCardFailed widget is first created.
class BuyCardFailedInitialEvent extends BuyCardFailedEvent {
  @override
  List<Object?> get props => [];
}
