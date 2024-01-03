// ignore_for_file: must_be_immutable

part of 'about_photography_bloc.dart';

/// Represents the state of AboutPhotography in the application.
class AboutPhotographyState extends Equatable {
  AboutPhotographyState({this.aboutPhotographyModelObj});

  AboutPhotographyModel? aboutPhotographyModelObj;

  @override
  List<Object?> get props => [
        aboutPhotographyModelObj,
      ];
  AboutPhotographyState copyWith(
      {AboutPhotographyModel? aboutPhotographyModelObj}) {
    return AboutPhotographyState(
      aboutPhotographyModelObj:
          aboutPhotographyModelObj ?? this.aboutPhotographyModelObj,
    );
  }
}
