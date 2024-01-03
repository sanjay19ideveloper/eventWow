// ignore_for_file: must_be_immutable

part of 'invites_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Invites widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvitesEvent extends Equatable {}

/// Event that is dispatched when the Invites widget is first created.
class InvitesInitialEvent extends InvitesEvent {
  @override
  List<Object?> get props => [];
}
