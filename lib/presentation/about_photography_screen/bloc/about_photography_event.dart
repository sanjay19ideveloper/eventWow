// ignore_for_file: must_be_immutable

part of 'about_photography_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AboutPhotography widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AboutPhotographyEvent extends Equatable {}

/// Event that is dispatched when the AboutPhotography widget is first created.
class AboutPhotographyInitialEvent extends AboutPhotographyEvent {
  @override
  List<Object?> get props => [];
}
