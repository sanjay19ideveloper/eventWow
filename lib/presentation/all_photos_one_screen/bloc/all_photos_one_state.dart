// ignore_for_file: must_be_immutable

part of 'all_photos_one_bloc.dart';

/// Represents the state of AllPhotosOne in the application.
class AllPhotosOneState extends Equatable {
  AllPhotosOneState({this.allPhotosOneModelObj});

  AllPhotosOneModel? allPhotosOneModelObj;

  @override
  List<Object?> get props => [
        allPhotosOneModelObj,
      ];
  AllPhotosOneState copyWith({AllPhotosOneModel? allPhotosOneModelObj}) {
    return AllPhotosOneState(
      allPhotosOneModelObj: allPhotosOneModelObj ?? this.allPhotosOneModelObj,
    );
  }
}
