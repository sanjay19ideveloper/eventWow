import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/allphotos_item_model.dart';
import 'package:sanjay_s_application2/presentation/all_photos_screen/models/all_photos_model.dart';
part 'all_photos_event.dart';
part 'all_photos_state.dart';

/// A bloc that manages the state of a AllPhotos according to the event that is dispatched to it.
class AllPhotosBloc extends Bloc<AllPhotosEvent, AllPhotosState> {
  AllPhotosBloc(AllPhotosState initialState) : super(initialState) {
    on<AllPhotosInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AllPhotosInitialEvent event,
    Emitter<AllPhotosState> emit,
  ) async {
    emit(state.copyWith(
        allPhotosModelObj: state.allPhotosModelObj?.copyWith(
      allphotosItemList: fillAllphotosItemList(),
    )));
  }

  List<AllphotosItemModel> fillAllphotosItemList() {
    return [
      AllphotosItemModel(rectangle: ImageConstant.imgRectangle4283),
      AllphotosItemModel(rectangle: ImageConstant.imgRectangle4284),
      AllphotosItemModel(rectangle: ImageConstant.imgRectangle4285),
      AllphotosItemModel(rectangle: ImageConstant.imgRectangle4266),
      AllphotosItemModel(rectangle: ImageConstant.imgRectangle4267103x120)
    ];
  }
}
