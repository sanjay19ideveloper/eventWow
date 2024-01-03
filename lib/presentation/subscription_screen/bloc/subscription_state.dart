// ignore_for_file: must_be_immutable

part of 'subscription_bloc.dart';

/// Represents the state of Subscription in the application.
class SubscriptionState extends Equatable {
  SubscriptionState({
    this.sliderIndex = 0,
    this.subscriptionModelObj,
  });

  SubscriptionModel? subscriptionModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        subscriptionModelObj,
      ];
  SubscriptionState copyWith({
    int? sliderIndex,
    SubscriptionModel? subscriptionModelObj,
  }) {
    return SubscriptionState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      subscriptionModelObj: subscriptionModelObj ?? this.subscriptionModelObj,
    );
  }
}
