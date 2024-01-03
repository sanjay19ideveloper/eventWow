// ignore_for_file: must_be_immutable

part of 'terms_conditions_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TermsConditionsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TermsConditionsOneEvent extends Equatable {}

/// Event that is dispatched when the TermsConditionsOne widget is first created.
class TermsConditionsOneInitialEvent extends TermsConditionsOneEvent {
  @override
  List<Object?> get props => [];
}
