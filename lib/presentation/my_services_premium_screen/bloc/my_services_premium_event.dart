// ignore_for_file: must_be_immutable

part of 'my_services_premium_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyServicesPremium widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyServicesPremiumEvent extends Equatable {}

/// Event that is dispatched when the MyServicesPremium widget is first created.
class MyServicesPremiumInitialEvent extends MyServicesPremiumEvent {
  @override
  List<Object?> get props => [];
}
