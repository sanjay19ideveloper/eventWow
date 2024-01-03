// ignore_for_file: must_be_immutable

part of 'all_top_selling_one_bloc.dart';

/// Represents the state of AllTopSellingOne in the application.
class AllTopSellingOneState extends Equatable {
  AllTopSellingOneState({this.allTopSellingOneModelObj});

  AllTopSellingOneModel? allTopSellingOneModelObj;

  @override
  List<Object?> get props => [
        allTopSellingOneModelObj,
      ];
  AllTopSellingOneState copyWith(
      {AllTopSellingOneModel? allTopSellingOneModelObj}) {
    return AllTopSellingOneState(
      allTopSellingOneModelObj:
          allTopSellingOneModelObj ?? this.allTopSellingOneModelObj,
    );
  }
}
