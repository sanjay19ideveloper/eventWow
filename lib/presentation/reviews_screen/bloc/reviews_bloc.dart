import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile2_item_model.dart';
import 'package:sanjay_s_application2/presentation/reviews_screen/models/reviews_model.dart';
part 'reviews_event.dart';
part 'reviews_state.dart';

/// A bloc that manages the state of a Reviews according to the event that is dispatched to it.
class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  ReviewsBloc(ReviewsState initialState) : super(initialState) {
    on<ReviewsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReviewsInitialEvent event,
    Emitter<ReviewsState> emit,
  ) async {
    emit(state.copyWith(
        reviewsModelObj: state.reviewsModelObj?.copyWith(
      userprofile2ItemList: fillUserprofile2ItemList(),
    )));
  }

  List<Userprofile2ItemModel> fillUserprofile2ItemList() {
    return [
      Userprofile2ItemModel(
          iconButtonProps: ImageConstant.imgGroup150,
          circleImageProps: ImageConstant.imgEllipse2,
          textProps: "John K.",
          textProps1: "10 months ago",
          imageProps: ImageConstant.imgSend,
          textProps2:
              "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumipsum lorem ipsum lorem"),
      Userprofile2ItemModel(
          iconButtonProps: ImageConstant.imgGroup150,
          circleImageProps: ImageConstant.imgEllipse2,
          textProps: "John K.",
          textProps1: "10 months ago",
          imageProps: ImageConstant.imgSend,
          textProps2:
              "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumipsum lorem ipsum lorem"),
      Userprofile2ItemModel(
          iconButtonProps: ImageConstant.imgGroup150,
          circleImageProps: ImageConstant.imgEllipse2,
          textProps: "John K.",
          textProps1: "10 months ago",
          imageProps: ImageConstant.imgSend,
          textProps2:
              "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumipsum lorem ipsum lorem"),
      Userprofile2ItemModel(
          textProps: "John K.",
          textProps1: "10 months ago",
          imageProps: ImageConstant.imgSend,
          textProps2:
              "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumipsum lorem ipsum lorem")
    ];
  }
}
