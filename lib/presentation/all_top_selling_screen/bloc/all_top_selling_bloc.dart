import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile8_item_model.dart';
import 'package:sanjay_s_application2/presentation/all_top_selling_screen/models/all_top_selling_model.dart';
part 'all_top_selling_event.dart';
part 'all_top_selling_state.dart';

/// A bloc that manages the state of a AllTopSelling according to the event that is dispatched to it.
class AllTopSellingBloc extends Bloc<AllTopSellingEvent, AllTopSellingState> {
  AllTopSellingBloc(AllTopSellingState initialState) : super(initialState) {
    on<AllTopSellingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AllTopSellingInitialEvent event,
    Emitter<AllTopSellingState> emit,
  ) async {
    emit(state.copyWith(
        allTopSellingModelObj: state.allTopSellingModelObj?.copyWith(
      userprofile8ItemList: fillUserprofile8ItemList(),
    )));
  }

  List<Userprofile8ItemModel> fillUserprofile8ItemList() {
    return [
      Userprofile8ItemModel(
          userImage: ImageConstant.imgRectangle4261170x161,
          ratingText: "4.5",
          foodText: "Food"),
      Userprofile8ItemModel(
          userImage: ImageConstant.imgRectangle4260, foodText: "DJ & Music"),
      Userprofile8ItemModel(
          userImage: ImageConstant.imgRectangle4267, foodText: "Decoration"),
      Userprofile8ItemModel(
          userImage: ImageConstant.imgRectangle4262, foodText: "Decoration")
    ];
  }
}
