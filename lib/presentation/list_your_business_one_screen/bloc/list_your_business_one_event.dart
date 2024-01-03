// ignore_for_file: must_be_immutable

part of 'list_your_business_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListYourBusinessOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListYourBusinessOneEvent extends Equatable {}

/// Event that is dispatched when the ListYourBusinessOne widget is first created.
class ListYourBusinessOneInitialEvent extends ListYourBusinessOneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ListYourBusinessOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends ListYourBusinessOneEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends ListYourBusinessOneEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown3Event extends ListYourBusinessOneEvent {
  ChangeDropDown3Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown4Event extends ListYourBusinessOneEvent {
  ChangeDropDown4Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown5Event extends ListYourBusinessOneEvent {
  ChangeDropDown5Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown6Event extends ListYourBusinessOneEvent {
  ChangeDropDown6Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown7Event extends ListYourBusinessOneEvent {
  ChangeDropDown7Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown8Event extends ListYourBusinessOneEvent {
  ChangeDropDown8Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown9Event extends ListYourBusinessOneEvent {
  ChangeDropDown9Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown10Event extends ListYourBusinessOneEvent {
  ChangeDropDown10Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
