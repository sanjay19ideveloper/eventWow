// ignore_for_file: must_be_immutable

part of 'published_bloc.dart';

/// Represents the state of Published in the application.
class PublishedState extends Equatable {
  PublishedState({this.publishedModelObj});

  PublishedModel? publishedModelObj;

  @override
  List<Object?> get props => [
        publishedModelObj,
      ];
  PublishedState copyWith({PublishedModel? publishedModelObj}) {
    return PublishedState(
      publishedModelObj: publishedModelObj ?? this.publishedModelObj,
    );
  }
}
