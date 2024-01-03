// ignore_for_file: must_be_immutable

part of 'help_faqs_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HelpFaqs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HelpFaqsEvent extends Equatable {}

/// Event that is dispatched when the HelpFaqs widget is first created.
class HelpFaqsInitialEvent extends HelpFaqsEvent {
  @override
  List<Object?> get props => [];
}
