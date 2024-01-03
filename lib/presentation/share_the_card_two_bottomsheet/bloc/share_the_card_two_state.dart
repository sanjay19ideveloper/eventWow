// ignore_for_file: must_be_immutable

part of 'share_the_card_two_bloc.dart';

/// Represents the state of ShareTheCardTwo in the application.
class ShareTheCardTwoState extends Equatable {
  ShareTheCardTwoState({this.shareTheCardTwoModelObj});

  ShareTheCardTwoModel? shareTheCardTwoModelObj;

  @override
  List<Object?> get props => [
        shareTheCardTwoModelObj,
      ];
  ShareTheCardTwoState copyWith(
      {ShareTheCardTwoModel? shareTheCardTwoModelObj}) {
    return ShareTheCardTwoState(
      shareTheCardTwoModelObj:
          shareTheCardTwoModelObj ?? this.shareTheCardTwoModelObj,
    );
  }
}
