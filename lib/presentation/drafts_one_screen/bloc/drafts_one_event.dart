// ignore_for_file: must_be_immutable

part of 'drafts_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DraftsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DraftsOneEvent extends Equatable {}

/// Event that is dispatched when the DraftsOne widget is first created.
class DraftsOneInitialEvent extends DraftsOneEvent {
  @override
  List<Object?> get props => [];
}
