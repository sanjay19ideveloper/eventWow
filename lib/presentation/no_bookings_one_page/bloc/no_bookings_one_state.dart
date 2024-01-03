// ignore_for_file: must_be_immutable

part of 'no_bookings_one_bloc.dart';

/// Represents the state of NoBookingsOne in the application.
class NoBookingsOneState extends Equatable {
  NoBookingsOneState({this.noBookingsOneModelObj});

  NoBookingsOneModel? noBookingsOneModelObj;

  @override
  List<Object?> get props => [
        noBookingsOneModelObj,
      ];
  NoBookingsOneState copyWith({NoBookingsOneModel? noBookingsOneModelObj}) {
    return NoBookingsOneState(
      noBookingsOneModelObj:
          noBookingsOneModelObj ?? this.noBookingsOneModelObj,
    );
  }
}
