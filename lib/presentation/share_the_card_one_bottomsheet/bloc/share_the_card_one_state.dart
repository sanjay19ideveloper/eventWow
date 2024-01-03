// ignore_for_file: must_be_immutable

part of 'share_the_card_one_bloc.dart';

/// Represents the state of ShareTheCardOne in the application.
class ShareTheCardOneState extends Equatable {
  ShareTheCardOneState({this.shareTheCardOneModelObj});

  ShareTheCardOneModel? shareTheCardOneModelObj;

  @override
  List<Object?> get props => [
        shareTheCardOneModelObj,
      ];
  ShareTheCardOneState copyWith(
      {ShareTheCardOneModel? shareTheCardOneModelObj}) {
    return ShareTheCardOneState(
      shareTheCardOneModelObj:
          shareTheCardOneModelObj ?? this.shareTheCardOneModelObj,
    );
  }
}
