// ignore_for_file: must_be_immutable

part of 'sub_category_bloc.dart';

/// Represents the state of SubCategory in the application.
class SubCategoryState extends Equatable {
  SubCategoryState({this.subCategoryModelObj});

  SubCategoryModel? subCategoryModelObj;

  @override
  List<Object?> get props => [
        subCategoryModelObj,
      ];
  SubCategoryState copyWith({SubCategoryModel? subCategoryModelObj}) {
    return SubCategoryState(
      subCategoryModelObj: subCategoryModelObj ?? this.subCategoryModelObj,
    );
  }
}
