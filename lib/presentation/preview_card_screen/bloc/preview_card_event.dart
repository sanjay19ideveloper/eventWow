// ignore_for_file: must_be_immutable

part of 'preview_card_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PreviewCard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PreviewCardEvent extends Equatable {}

/// Event that is dispatched when the PreviewCard widget is first created.
class PreviewCardInitialEvent extends PreviewCardEvent {
  @override
  List<Object?> get props => [];
}
