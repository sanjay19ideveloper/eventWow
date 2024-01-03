import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/banquetcomponent_item_model.dart';
import 'package:sanjay_s_application2/presentation/my_services_premium_screen/models/my_services_premium_model.dart';
part 'my_services_premium_event.dart';
part 'my_services_premium_state.dart';

/// A bloc that manages the state of a MyServicesPremium according to the event that is dispatched to it.
class MyServicesPremiumBloc
    extends Bloc<MyServicesPremiumEvent, MyServicesPremiumState> {
  MyServicesPremiumBloc(MyServicesPremiumState initialState)
      : super(initialState) {
    on<MyServicesPremiumInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyServicesPremiumInitialEvent event,
    Emitter<MyServicesPremiumState> emit,
  ) async {
    emit(state.copyWith(
        myServicesPremiumModelObj: state.myServicesPremiumModelObj?.copyWith(
      banquetcomponentItemList: fillBanquetcomponentItemList(),
    )));
  }

  List<BanquetcomponentItemModel> fillBanquetcomponentItemList() {
    return [
      BanquetcomponentItemModel(
          banquetImage: ImageConstant.imgRectangle42661,
          paperPlaneIcon: ImageConstant.imgPaperPlane1,
          banquetText: "Banquet"),
      BanquetcomponentItemModel(
          banquetImage: ImageConstant.imgRectangle42641,
          paperPlaneIcon: ImageConstant.imgPaperPlane1,
          banquetText: "Lawns"),
      BanquetcomponentItemModel(
          banquetImage: ImageConstant.imgRectangle4268157x149)
    ];
  }
}
