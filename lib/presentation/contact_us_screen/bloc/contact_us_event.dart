// ignore_for_file: must_be_immutable

part of 'contact_us_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ContactUs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ContactUsEvent extends Equatable {}

/// Event that is dispatched when the ContactUs widget is first created.
class ContactUsInitialEvent extends ContactUsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends ContactUsEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
