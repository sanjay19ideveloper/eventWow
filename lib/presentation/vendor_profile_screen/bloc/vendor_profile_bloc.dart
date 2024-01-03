import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/eventlist_item_model.dart';
import 'package:sanjay_s_application2/presentation/vendor_profile_screen/models/vendor_profile_model.dart';
part 'vendor_profile_event.dart';
part 'vendor_profile_state.dart';

/// A bloc that manages the state of a VendorProfile according to the event that is dispatched to it.
class VendorProfileBloc extends Bloc<VendorProfileEvent, VendorProfileState> {
  VendorProfileBloc(VendorProfileState initialState) : super(initialState) {
    on<VendorProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VendorProfileInitialEvent event,
    Emitter<VendorProfileState> emit,
  ) async {
    emit(state.copyWith(
        vendorProfileModelObj: state.vendorProfileModelObj?.copyWith(
      eventlistItemList: fillEventlistItemList(),
    )));
  }

  List<EventlistItemModel> fillEventlistItemList() {
    return [
      EventlistItemModel(
          iconButton: ImageConstant.imgGroup342,
          eventText: "900+ Events",
          photographerText: "Photographer"),
      EventlistItemModel(
          iconButton: ImageConstant.imgGroup344,
          eventText: "900+ Events",
          photographerText: "Decorations"),
      EventlistItemModel(
          iconButton: ImageConstant.imgGroup343,
          eventText: "900+ Events",
          photographerText: "Carters")
    ];
  }
}
