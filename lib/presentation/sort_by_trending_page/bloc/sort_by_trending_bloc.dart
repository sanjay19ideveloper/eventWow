import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gridsection2_item_model.dart';
import 'package:sanjay_s_application2/presentation/sort_by_trending_page/models/sort_by_trending_model.dart';
part 'sort_by_trending_event.dart';
part 'sort_by_trending_state.dart';

/// A bloc that manages the state of a SortByTrending according to the event that is dispatched to it.
class SortByTrendingBloc
    extends Bloc<SortByTrendingEvent, SortByTrendingState> {
  SortByTrendingBloc(SortByTrendingState initialState) : super(initialState) {
    on<SortByTrendingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SortByTrendingInitialEvent event,
    Emitter<SortByTrendingState> emit,
  ) async {
    emit(state.copyWith(
        sortByTrendingModelObj: state.sortByTrendingModelObj?.copyWith(
      gridsection2ItemList: fillGridsection2ItemList(),
    )));
  }

  List<Gridsection2ItemModel> fillGridsection2ItemList() {
    return [
      Gridsection2ItemModel(
          image: ImageConstant.imgRectangle42592, text: "Shaalimar"),
      Gridsection2ItemModel(
          image: ImageConstant.imgRectangle42581, text: "Loving Paradise"),
      Gridsection2ItemModel(
          image: ImageConstant.imgRectangle42613, text: "Petals of love"),
      Gridsection2ItemModel(
          image: ImageConstant.imgRectangle42601, text: "Fairy lights")
    ];
  }
}
