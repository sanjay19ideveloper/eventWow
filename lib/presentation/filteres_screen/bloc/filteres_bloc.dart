import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import 'package:sanjay_s_application2/presentation/filteres_screen/models/filteres_model.dart';
part 'filteres_event.dart';
part 'filteres_state.dart';

/// A bloc that manages the state of a Filteres according to the event that is dispatched to it.
class FilteresBloc extends Bloc<FilteresEvent, FilteresState> {
  FilteresBloc(FilteresState initialState) : super(initialState) {
    on<FilteresInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FilteresInitialEvent event,
    Emitter<FilteresState> emit,
  ) async {
    emit(state.copyWith(
        filteresModelObj: state.filteresModelObj?.copyWith(
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          image: ImageConstant.imgRectangle4259,
          title: "The Cine Click",
          price: "₹50,000 ",
          duration: "per day",
          location: "Mumbai, Maharashta"),
      Userprofile1ItemModel(
          image: ImageConstant.imgRectangle4278,
          title: "The Cine Click",
          price: "₹50,000 ",
          duration: "per day",
          location: "Mumbai, Maharashta"),
      Userprofile1ItemModel(location: "per day")
    ];
  }
}
