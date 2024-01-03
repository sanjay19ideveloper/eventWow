// ignore_for_file: must_be_immutable

part of 'privacy_policy_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PrivacyPolicyOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PrivacyPolicyOneEvent extends Equatable {}

/// Event that is dispatched when the PrivacyPolicyOne widget is first created.
class PrivacyPolicyOneInitialEvent extends PrivacyPolicyOneEvent {
  @override
  List<Object?> get props => [];
}
