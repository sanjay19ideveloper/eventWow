// ignore_for_file: must_be_immutable

part of 'terms_conditions_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TermsConditions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TermsConditionsEvent extends Equatable {}

/// Event that is dispatched when the TermsConditions widget is first created.
class TermsConditionsInitialEvent extends TermsConditionsEvent {
  @override
  List<Object?> get props => [];
}
