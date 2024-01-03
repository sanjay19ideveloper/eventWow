// ignore_for_file: must_be_immutable

part of 'no_bookings_bloc.dart';

/// Represents the state of NoBookings in the application.
class NoBookingsState extends Equatable {
  NoBookingsState({this.noBookingsModelObj});

  NoBookingsModel? noBookingsModelObj;

  @override
  List<Object?> get props => [
        noBookingsModelObj,
      ];
  NoBookingsState copyWith({NoBookingsModel? noBookingsModelObj}) {
    return NoBookingsState(
      noBookingsModelObj: noBookingsModelObj ?? this.noBookingsModelObj,
    );
  }
}
