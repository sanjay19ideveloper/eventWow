// ignore_for_file: must_be_immutable

part of 'homepage_bloc.dart';

/// Represents the state of Homepage in the application.
class HomepageState extends Equatable {
  HomepageState({
    this.sliderIndex = 0,
    this.homepageModelObj,
  });

  HomepageModel? homepageModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        homepageModelObj,
      ];
  HomepageState copyWith({
    int? sliderIndex,
    HomepageModel? homepageModelObj,
  }) {
    return HomepageState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homepageModelObj: homepageModelObj ?? this.homepageModelObj,
    );
  }
}
