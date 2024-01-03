// ignore_for_file: must_be_immutable

part of 'all_top_selling_bloc.dart';

/// Represents the state of AllTopSelling in the application.
class AllTopSellingState extends Equatable {
  AllTopSellingState({this.allTopSellingModelObj});

  AllTopSellingModel? allTopSellingModelObj;

  @override
  List<Object?> get props => [
        allTopSellingModelObj,
      ];
  AllTopSellingState copyWith({AllTopSellingModel? allTopSellingModelObj}) {
    return AllTopSellingState(
      allTopSellingModelObj:
          allTopSellingModelObj ?? this.allTopSellingModelObj,
    );
  }
}
