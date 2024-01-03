import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/wishlist_one_screen/models/wishlist_one_model.dart';
part 'wishlist_one_event.dart';
part 'wishlist_one_state.dart';

/// A bloc that manages the state of a WishlistOne according to the event that is dispatched to it.
class WishlistOneBloc extends Bloc<WishlistOneEvent, WishlistOneState> {
  WishlistOneBloc(WishlistOneState initialState) : super(initialState) {
    on<WishlistOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WishlistOneInitialEvent event,
    Emitter<WishlistOneState> emit,
  ) async {}
}
