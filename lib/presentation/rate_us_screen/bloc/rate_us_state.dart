// ignore_for_file: must_be_immutable

part of 'rate_us_bloc.dart';

/// Represents the state of RateUs in the application.
class RateUsState extends Equatable {
  RateUsState({
    this.writeherevalueController,
    this.rateUsModelObj,
  });

  TextEditingController? writeherevalueController;

  RateUsModel? rateUsModelObj;

  @override
  List<Object?> get props => [
        writeherevalueController,
        rateUsModelObj,
      ];
  RateUsState copyWith({
    TextEditingController? writeherevalueController,
    RateUsModel? rateUsModelObj,
  }) {
    return RateUsState(
      writeherevalueController:
          writeherevalueController ?? this.writeherevalueController,
      rateUsModelObj: rateUsModelObj ?? this.rateUsModelObj,
    );
  }
}
