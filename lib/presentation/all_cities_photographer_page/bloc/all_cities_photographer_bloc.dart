import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/models/all_cities_photographer_model.dart';
part 'all_cities_photographer_event.dart';
part 'all_cities_photographer_state.dart';

/// A bloc that manages the state of a AllCitiesPhotographer according to the event that is dispatched to it.
class AllCitiesPhotographerBloc
    extends Bloc<AllCitiesPhotographerEvent, AllCitiesPhotographerState> {
  AllCitiesPhotographerBloc(AllCitiesPhotographerState initialState)
      : super(initialState) {
    on<AllCitiesPhotographerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AllCitiesPhotographerInitialEvent event,
    Emitter<AllCitiesPhotographerState> emit,
  ) async {
    emit(state.copyWith(
        allCitiesPhotographerModelObj:
            state.allCitiesPhotographerModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          movieTitle: "The Cine Click",
          moviePrice: "₹50,000 ",
          priceUnit: "per day",
          location: "Mumbai, Maharashta"),
      UserprofileItemModel(
          movieTitle: "The Cine Click",
          moviePrice: "₹50,000 ",
          priceUnit: "per day",
          location: "Mumbai, Maharashta")
    ];
  }
}
