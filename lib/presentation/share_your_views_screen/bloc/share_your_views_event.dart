// ignore_for_file: must_be_immutable

part of 'share_your_views_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShareYourViews widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShareYourViewsEvent extends Equatable {}

/// Event that is dispatched when the ShareYourViews widget is first created.
class ShareYourViewsInitialEvent extends ShareYourViewsEvent {
  @override
  List<Object?> get props => [];
}
