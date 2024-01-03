// ignore_for_file: must_be_immutable

part of 'contact_us_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ContactUsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ContactUsOneEvent extends Equatable {}

/// Event that is dispatched when the ContactUsOne widget is first created.
class ContactUsOneInitialEvent extends ContactUsOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends ContactUsOneEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
