// ignore_for_file: must_be_immutable

part of 'my_services_premium_bloc.dart';

/// Represents the state of MyServicesPremium in the application.
class MyServicesPremiumState extends Equatable {
  MyServicesPremiumState({this.myServicesPremiumModelObj});

  MyServicesPremiumModel? myServicesPremiumModelObj;

  @override
  List<Object?> get props => [
        myServicesPremiumModelObj,
      ];
  MyServicesPremiumState copyWith(
      {MyServicesPremiumModel? myServicesPremiumModelObj}) {
    return MyServicesPremiumState(
      myServicesPremiumModelObj:
          myServicesPremiumModelObj ?? this.myServicesPremiumModelObj,
    );
  }
}
