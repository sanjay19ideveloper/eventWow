import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/lawngrid_item_model.dart';
import 'package:sanjay_s_application2/presentation/lawn_business_five_page/models/lawn_business_five_model.dart';
part 'lawn_business_five_event.dart';
part 'lawn_business_five_state.dart';

/// A bloc that manages the state of a LawnBusinessFive according to the event that is dispatched to it.
class LawnBusinessFiveBloc
    extends Bloc<LawnBusinessFiveEvent, LawnBusinessFiveState> {
  LawnBusinessFiveBloc(LawnBusinessFiveState initialState)
      : super(initialState) {
    on<LawnBusinessFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LawnBusinessFiveInitialEvent event,
    Emitter<LawnBusinessFiveState> emit,
  ) async {
    emit(state.copyWith(
        lawnBusinessFiveModelObj: state.lawnBusinessFiveModelObj?.copyWith(
      lawngridItemList: fillLawngridItemList(),
    )));
  }

  List<LawngridItemModel> fillLawngridItemList() {
    return [
      LawngridItemModel(
          lawnImage1: ImageConstant.imgImage14,
          lawnImage2: ImageConstant.imgImage14),
      LawngridItemModel(
          lawnImage1: ImageConstant.imgImage14,
          lawnImage2: ImageConstant.imgImage14)
    ];
  }
}
