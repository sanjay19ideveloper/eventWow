import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/banquetlist_item_model.dart';
import 'package:sanjay_s_application2/presentation/search_screen/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
  }

  List<BanquetlistItemModel> fillBanquetlistItemList() {
    return [
      BanquetlistItemModel(
          banquetImage: ImageConstant.imgEllipse150, banquetText: "Banquet"),
      BanquetlistItemModel(
          banquetImage: ImageConstant.imgEllipse151, banquetText: "Lawns"),
      BanquetlistItemModel(
          banquetImage: ImageConstant.imgEllipse152, banquetText: "Food"),
      BanquetlistItemModel(
          banquetImage: ImageConstant.imgEllipse153, banquetText: "Decoration"),
      BanquetlistItemModel(
          banquetImage: ImageConstant.imgEllipse150, banquetText: "Banquet"),
      BanquetlistItemModel(
          banquetImage: ImageConstant.imgEllipse151, banquetText: "Lawns")
    ];
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
      banquetlistItemList: fillBanquetlistItemList(),
    )));
  }
}
