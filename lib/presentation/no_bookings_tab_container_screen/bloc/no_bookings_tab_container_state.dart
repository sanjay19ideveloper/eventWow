// ignore_for_file: must_be_immutable

part of 'no_bookings_tab_container_bloc.dart';

/// Represents the state of NoBookingsTabContainer in the application.
class NoBookingsTabContainerState extends Equatable {
  NoBookingsTabContainerState({this.noBookingsTabContainerModelObj});

  NoBookingsTabContainerModel? noBookingsTabContainerModelObj;

  @override
  List<Object?> get props => [
        noBookingsTabContainerModelObj,
      ];
  NoBookingsTabContainerState copyWith(
      {NoBookingsTabContainerModel? noBookingsTabContainerModelObj}) {
    return NoBookingsTabContainerState(
      noBookingsTabContainerModelObj:
          noBookingsTabContainerModelObj ?? this.noBookingsTabContainerModelObj,
    );
  }
}
