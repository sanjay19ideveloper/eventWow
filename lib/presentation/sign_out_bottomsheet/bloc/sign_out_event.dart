// ignore_for_file: must_be_immutable

part of 'sign_out_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignOut widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignOutEvent extends Equatable {}

/// Event that is dispatched when the SignOut widget is first created.
class SignOutInitialEvent extends SignOutEvent {
  @override
  List<Object?> get props => [];
}
