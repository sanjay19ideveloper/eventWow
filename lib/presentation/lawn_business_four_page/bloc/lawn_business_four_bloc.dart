import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilesection_item_model.dart';
import 'package:sanjay_s_application2/presentation/lawn_business_four_page/models/lawn_business_four_model.dart';
part 'lawn_business_four_event.dart';
part 'lawn_business_four_state.dart';

/// A bloc that manages the state of a LawnBusinessFour according to the event that is dispatched to it.
class LawnBusinessFourBloc
    extends Bloc<LawnBusinessFourEvent, LawnBusinessFourState> {
  LawnBusinessFourBloc(LawnBusinessFourState initialState)
      : super(initialState) {
    on<LawnBusinessFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LawnBusinessFourInitialEvent event,
    Emitter<LawnBusinessFourState> emit,
  ) async {
    emit(state.copyWith(
        lawnBusinessFourModelObj: state.lawnBusinessFourModelObj?.copyWith(
      userprofilesectionItemList: fillUserprofilesectionItemList(),
    )));
  }

  List<UserprofilesectionItemModel> fillUserprofilesectionItemList() {
    return [
      UserprofilesectionItemModel(
          userImage: ImageConstant.imgRectangle4267,
          userImage1: ImageConstant.imgRectangle4279,
          userText: "110",
          userText1: "Lawns"),
      UserprofilesectionItemModel(userImage: ImageConstant.imgPicture1),
      UserprofilesectionItemModel(
          userImage: ImageConstant.imgRectangle4267,
          userImage1: ImageConstant.imgRectangle4280170x161,
          userText: "110",
          userText1: "Lawns"),
      UserprofilesectionItemModel(userImage: ImageConstant.imgPicture1)
    ];
  }
}
