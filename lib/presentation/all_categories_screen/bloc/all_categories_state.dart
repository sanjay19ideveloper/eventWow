// ignore_for_file: must_be_immutable

part of 'all_categories_bloc.dart';

/// Represents the state of AllCategories in the application.
class AllCategoriesState extends Equatable {
  AllCategoriesState({this.allCategoriesModelObj});

  AllCategoriesModel? allCategoriesModelObj;

  @override
  List<Object?> get props => [
        allCategoriesModelObj,
      ];
  AllCategoriesState copyWith({AllCategoriesModel? allCategoriesModelObj}) {
    return AllCategoriesState(
      allCategoriesModelObj:
          allCategoriesModelObj ?? this.allCategoriesModelObj,
    );
  }
}
