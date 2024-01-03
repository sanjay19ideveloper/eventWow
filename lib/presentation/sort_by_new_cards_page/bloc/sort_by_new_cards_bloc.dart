import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gridsection1_item_model.dart';
import 'package:sanjay_s_application2/presentation/sort_by_new_cards_page/models/sort_by_new_cards_model.dart';
part 'sort_by_new_cards_event.dart';
part 'sort_by_new_cards_state.dart';

/// A bloc that manages the state of a SortByNewCards according to the event that is dispatched to it.
class SortByNewCardsBloc
    extends Bloc<SortByNewCardsEvent, SortByNewCardsState> {
  SortByNewCardsBloc(SortByNewCardsState initialState) : super(initialState) {
    on<SortByNewCardsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SortByNewCardsInitialEvent event,
    Emitter<SortByNewCardsState> emit,
  ) async {
    emit(state.copyWith(
        sortByNewCardsModelObj: state.sortByNewCardsModelObj?.copyWith(
      gridsection1ItemList: fillGridsection1ItemList(),
    )));
  }

  List<Gridsection1ItemModel> fillGridsection1ItemList() {
    return [
      Gridsection1ItemModel(
          image: ImageConstant.imgRectangle42592, text: "Shaalimar"),
      Gridsection1ItemModel(
          image: ImageConstant.imgRectangle42581, text: "Loving Paradise"),
      Gridsection1ItemModel(
          image: ImageConstant.imgRectangle42613, text: "Petals of love"),
      Gridsection1ItemModel(
          image: ImageConstant.imgRectangle42601, text: "Fairy lights")
    ];
  }
}
