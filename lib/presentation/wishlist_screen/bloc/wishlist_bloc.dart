import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile10_item_model.dart';
import 'package:sanjay_s_application2/presentation/wishlist_screen/models/wishlist_model.dart';
part 'wishlist_event.dart';
part 'wishlist_state.dart';

/// A bloc that manages the state of a Wishlist according to the event that is dispatched to it.
class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc(WishlistState initialState) : super(initialState) {
    on<WishlistInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WishlistInitialEvent event,
    Emitter<WishlistState> emit,
  ) async {
    emit(state.copyWith(
        wishlistModelObj: state.wishlistModelObj?.copyWith(
      userprofile10ItemList: fillUserprofile10ItemList(),
    )));
  }

  List<Userprofile10ItemModel> fillUserprofile10ItemList() {
    return [
      Userprofile10ItemModel(
          userImage: ImageConstant.imgRectangle4259170x161,
          text: "4.5",
          text1: "Photographer"),
      Userprofile10ItemModel(
          userImage: ImageConstant.imgRectangle4258170x161,
          text: "4.5",
          text1: "Decoration"),
      Userprofile10ItemModel(
          userImage: ImageConstant.imgRectangle4261170x161, text1: "Food"),
      Userprofile10ItemModel(
          userImage: ImageConstant.imgRectangle4260, text1: "DJ & Music")
    ];
  }
}
