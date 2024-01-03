// ignore_for_file: must_be_immutable

part of 'upcoming_bookings_one_bloc.dart';

/// Represents the state of UpcomingBookingsOne in the application.
class UpcomingBookingsOneState extends Equatable {
  UpcomingBookingsOneState({this.upcomingBookingsOneModelObj});

  UpcomingBookingsOneModel? upcomingBookingsOneModelObj;

  @override
  List<Object?> get props => [
        upcomingBookingsOneModelObj,
      ];
  UpcomingBookingsOneState copyWith(
      {UpcomingBookingsOneModel? upcomingBookingsOneModelObj}) {
    return UpcomingBookingsOneState(
      upcomingBookingsOneModelObj:
          upcomingBookingsOneModelObj ?? this.upcomingBookingsOneModelObj,
    );
  }
}
