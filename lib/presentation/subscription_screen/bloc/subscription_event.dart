// ignore_for_file: must_be_immutable

part of 'subscription_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Subscription widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SubscriptionEvent extends Equatable {}

/// Event that is dispatched when the Subscription widget is first created.
class SubscriptionInitialEvent extends SubscriptionEvent {
  @override
  List<Object?> get props => [];
}
