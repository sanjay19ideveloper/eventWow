// ignore_for_file: must_be_immutable

part of 'list_your_business_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListYourBusiness widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListYourBusinessEvent extends Equatable {}

/// Event that is dispatched when the ListYourBusiness widget is first created.
class ListYourBusinessInitialEvent extends ListYourBusinessEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ListYourBusinessEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends ListYourBusinessEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends ListYourBusinessEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown3Event extends ListYourBusinessEvent {
  ChangeDropDown3Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
