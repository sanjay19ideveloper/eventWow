import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile4_item_model.dart';
import '../models/userprofilelist_item_model.dart';
import '../models/lawnbusinessfourtabcontainer_item_model.dart';
import 'package:sanjay_s_application2/presentation/lawn_business_four_tab_container_screen/models/lawn_business_four_tab_container_model.dart';
part 'lawn_business_four_tab_container_event.dart';
part 'lawn_business_four_tab_container_state.dart';

/// A bloc that manages the state of a LawnBusinessFourTabContainer according to the event that is dispatched to it.
class LawnBusinessFourTabContainerBloc extends Bloc<
    LawnBusinessFourTabContainerEvent, LawnBusinessFourTabContainerState> {
  LawnBusinessFourTabContainerBloc(
      LawnBusinessFourTabContainerState initialState)
      : super(initialState) {
    on<LawnBusinessFourTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LawnBusinessFourTabContainerInitialEvent event,
    Emitter<LawnBusinessFourTabContainerState> emit,
  ) async {
    emit(state.copyWith(
        lawnBusinessFourTabContainerModelObj:
            state.lawnBusinessFourTabContainerModelObj?.copyWith(
      userprofile4ItemList: fillUserprofile4ItemList(),
      userprofilelistItemList: fillUserprofilelistItemList(),
      lawnbusinessfourtabcontainerItemList:
          fillLawnbusinessfourtabcontainerItemList(),
    )));
  }

  List<Userprofile4ItemModel> fillUserprofile4ItemList() {
    return [
      Userprofile4ItemModel(
          userName: "John K.",
          duration: "10 months ago",
          description:
              "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumipsum lorem ipsum lorem")
    ];
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          userImage1: ImageConstant.imgRectangle4264,
          userImage2: ImageConstant.imgBookmark,
          userText1: "Lorem ipsum studio",
          userText2: "MG Road",
          userImage3: ImageConstant.imgStarSymbolIconYellowA700,
          userText3: "4.5 (132)",
          userText4: "₹ 60,000",
          userText5: "per day"),
      UserprofilelistItemModel(
          userImage1: ImageConstant.imgRectangle4273,
          userImage2: ImageConstant.imgBookmark,
          userText1: "Lorem ipsum studio",
          userText2: "MG Road",
          userImage3: ImageConstant.imgStarSymbolIconYellowA700,
          userText3: "4.5 (132)",
          userText4: "₹ 60,000",
          userText5: "per day"),
      UserprofilelistItemModel(
          userImage1: ImageConstant.imgRectangle4274,
          userImage2: ImageConstant.imgBookmark,
          userText1: "Lorem ipsum photos",
          userText2: "MG Road",
          userImage3: ImageConstant.imgStarSymbolIconYellowA700,
          userText3: "4.5 (132)",
          userText4: "₹ 60,000",
          userText5: "per day"),
      UserprofilelistItemModel(
          userImage1: ImageConstant.imgRectangle4275,
          userImage2: ImageConstant.imgBookmark,
          userText1: "Lorem ipsum photos",
          userText2: "MG Road",
          userImage3: ImageConstant.imgStarSymbolIconYellowA700,
          userText3: "4.5 (132)",
          userText4: "₹ 60,000",
          userText5: "per day"),
      UserprofilelistItemModel(
          userImage1: ImageConstant.imgRectangle4276,
          userImage2: ImageConstant.imgBookmark,
          userText1: "Lorem ipsum photos",
          userText2: "MG Road",
          userImage3: ImageConstant.imgStarSymbolIconYellowA700,
          userText3: "4.5 (132)",
          userText4: "₹ 60,000",
          userText5: "per day")
    ];
  }

  List<LawnbusinessfourtabcontainerItemModel>
      fillLawnbusinessfourtabcontainerItemList() {
    return [
      LawnbusinessfourtabcontainerItemModel(
          image: ImageConstant.imgRectangle4260170x161),
      LawnbusinessfourtabcontainerItemModel(
          image: ImageConstant.imgRectangle4270),
      LawnbusinessfourtabcontainerItemModel(
          image: ImageConstant.imgRectangle4279),
      LawnbusinessfourtabcontainerItemModel(
          image: ImageConstant.imgRectangle4272)
    ];
  }
}
