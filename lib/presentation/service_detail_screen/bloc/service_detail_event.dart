// ignore_for_file: must_be_immutable

part of 'service_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ServiceDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ServiceDetailEvent extends Equatable {}

/// Event that is dispatched when the ServiceDetail widget is first created.
class ServiceDetailInitialEvent extends ServiceDetailEvent {
  @override
  List<Object?> get props => [];
}
