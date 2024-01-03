// ignore_for_file: must_be_immutable

part of 'drafts_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Drafts widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DraftsEvent extends Equatable {}

/// Event that is dispatched when the Drafts widget is first created.
class DraftsInitialEvent extends DraftsEvent {
  @override
  List<Object?> get props => [];
}
