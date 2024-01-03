// ignore_for_file: must_be_immutable

part of 'upcoming_bookings_bloc.dart';

/// Represents the state of UpcomingBookings in the application.
class UpcomingBookingsState extends Equatable {
  UpcomingBookingsState({this.upcomingBookingsModelObj});

  UpcomingBookingsModel? upcomingBookingsModelObj;

  @override
  List<Object?> get props => [
        upcomingBookingsModelObj,
      ];
  UpcomingBookingsState copyWith(
      {UpcomingBookingsModel? upcomingBookingsModelObj}) {
    return UpcomingBookingsState(
      upcomingBookingsModelObj:
          upcomingBookingsModelObj ?? this.upcomingBookingsModelObj,
    );
  }
}
