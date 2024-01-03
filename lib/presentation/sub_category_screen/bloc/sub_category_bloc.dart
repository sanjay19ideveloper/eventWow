import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/sub_category_screen/models/sub_category_model.dart';
part 'sub_category_event.dart';
part 'sub_category_state.dart';

/// A bloc that manages the state of a SubCategory according to the event that is dispatched to it.
class SubCategoryBloc extends Bloc<SubCategoryEvent, SubCategoryState> {
  SubCategoryBloc(SubCategoryState initialState) : super(initialState) {
    on<SubCategoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SubCategoryInitialEvent event,
    Emitter<SubCategoryState> emit,
  ) async {}
}
