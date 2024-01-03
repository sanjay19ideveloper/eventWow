import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilegrid_item_model.dart';
import 'package:sanjay_s_application2/presentation/all_top_selling_one_page/models/all_top_selling_one_model.dart';
part 'all_top_selling_one_event.dart';
part 'all_top_selling_one_state.dart';

/// A bloc that manages the state of a AllTopSellingOne according to the event that is dispatched to it.
class AllTopSellingOneBloc
    extends Bloc<AllTopSellingOneEvent, AllTopSellingOneState> {
  AllTopSellingOneBloc(AllTopSellingOneState initialState)
      : super(initialState) {
    on<AllTopSellingOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AllTopSellingOneInitialEvent event,
    Emitter<AllTopSellingOneState> emit,
  ) async {
    emit(state.copyWith(
        allTopSellingOneModelObj: state.allTopSellingOneModelObj?.copyWith(
      userprofilegridItemList: fillUserprofilegridItemList(),
    )));
  }

  List<UserprofilegridItemModel> fillUserprofilegridItemList() {
    return [
      UserprofilegridItemModel(
          image: ImageConstant.imgRectangle4259170x161,
          bookmarkIcon: ImageConstant.imgBookmark,
          ratingText: "4.5",
          photographerText: "Photographer"),
      UserprofilegridItemModel(
          image: ImageConstant.imgRectangle4258170x161,
          bookmarkIcon: ImageConstant.imgBookmark,
          ratingText: "4.5",
          photographerText: "Decoration"),
      UserprofilegridItemModel(
          image: ImageConstant.imgRectangle4261170x161,
          bookmarkIcon: ImageConstant.imgBookmark,
          photographerText: "Food"),
      UserprofilegridItemModel(
          image: ImageConstant.imgRectangle4260,
          bookmarkIcon: ImageConstant.imgBookmark,
          photographerText: "DJ & Music"),
      UserprofilegridItemModel(
          image: ImageConstant.imgRectangle4267,
          bookmarkIcon: ImageConstant.imgBookmark,
          ratingText: "4.5",
          photographerText: "Decoration"),
      UserprofilegridItemModel(
          image: ImageConstant.imgRectangle4262,
          bookmarkIcon: ImageConstant.imgBookmark,
          photographerText: "Decoration")
    ];
  }
}
