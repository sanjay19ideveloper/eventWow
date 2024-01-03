// ignore_for_file: must_be_immutable

part of 'share_the_app_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShareTheApp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShareTheAppEvent extends Equatable {}

/// Event that is dispatched when the ShareTheApp widget is first created.
class ShareTheAppInitialEvent extends ShareTheAppEvent {
  @override
  List<Object?> get props => [];
}
