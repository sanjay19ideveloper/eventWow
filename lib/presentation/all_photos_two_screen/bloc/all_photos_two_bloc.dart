import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/allphotostwo_item_model.dart';
import 'package:sanjay_s_application2/presentation/all_photos_two_screen/models/all_photos_two_model.dart';
part 'all_photos_two_event.dart';
part 'all_photos_two_state.dart';

/// A bloc that manages the state of a AllPhotosTwo according to the event that is dispatched to it.
class AllPhotosTwoBloc extends Bloc<AllPhotosTwoEvent, AllPhotosTwoState> {
  AllPhotosTwoBloc(AllPhotosTwoState initialState) : super(initialState) {
    on<AllPhotosTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AllPhotosTwoInitialEvent event,
    Emitter<AllPhotosTwoState> emit,
  ) async {
    emit(state.copyWith(
        allPhotosTwoModelObj: state.allPhotosTwoModelObj?.copyWith(
      allphotostwoItemList: fillAllphotostwoItemList(),
    )));
  }

  List<AllphotostwoItemModel> fillAllphotostwoItemList() {
    return [
      AllphotostwoItemModel(rectangle: ImageConstant.imgRectangle4259162x375),
      AllphotostwoItemModel(rectangle: ImageConstant.imgRectangle4260162x185),
      AllphotostwoItemModel(rectangle: ImageConstant.imgRectangle4261),
      AllphotostwoItemModel(rectangle: ImageConstant.imgRectangle4261),
      AllphotostwoItemModel(rectangle: ImageConstant.imgRectangle4260162x185),
      AllphotostwoItemModel(rectangle: ImageConstant.imgRectangle4260162x185),
      AllphotostwoItemModel(rectangle: ImageConstant.imgRectangle4265)
    ];
  }
}
