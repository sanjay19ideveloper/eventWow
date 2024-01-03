// ignore_for_file: must_be_immutable

part of 'all_photos_two_bloc.dart';

/// Represents the state of AllPhotosTwo in the application.
class AllPhotosTwoState extends Equatable {
  AllPhotosTwoState({this.allPhotosTwoModelObj});

  AllPhotosTwoModel? allPhotosTwoModelObj;

  @override
  List<Object?> get props => [
        allPhotosTwoModelObj,
      ];
  AllPhotosTwoState copyWith({AllPhotosTwoModel? allPhotosTwoModelObj}) {
    return AllPhotosTwoState(
      allPhotosTwoModelObj: allPhotosTwoModelObj ?? this.allPhotosTwoModelObj,
    );
  }
}
