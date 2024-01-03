// ignore_for_file: must_be_immutable

part of 'all_photos_bloc.dart';

/// Represents the state of AllPhotos in the application.
class AllPhotosState extends Equatable {
  AllPhotosState({this.allPhotosModelObj});

  AllPhotosModel? allPhotosModelObj;

  @override
  List<Object?> get props => [
        allPhotosModelObj,
      ];
  AllPhotosState copyWith({AllPhotosModel? allPhotosModelObj}) {
    return AllPhotosState(
      allPhotosModelObj: allPhotosModelObj ?? this.allPhotosModelObj,
    );
  }
}
