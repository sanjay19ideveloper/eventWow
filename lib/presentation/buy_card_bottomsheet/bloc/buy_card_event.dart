// ignore_for_file: must_be_immutable

part of 'buy_card_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BuyCard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BuyCardEvent extends Equatable {}

/// Event that is dispatched when the BuyCard widget is first created.
class BuyCardInitialEvent extends BuyCardEvent {
  @override
  List<Object?> get props => [];
}
