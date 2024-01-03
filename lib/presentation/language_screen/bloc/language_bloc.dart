import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/language_screen/models/language_model.dart';
part 'language_event.dart';
part 'language_state.dart';

/// A bloc that manages the state of a Language according to the event that is dispatched to it.
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(LanguageState initialState) : super(initialState) {
    on<LanguageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
    on<ChangeRadioButton2Event>(_changeRadioButton2);
    on<ChangeRadioButton3Event>(_changeRadioButton3);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<LanguageState> emit,
  ) {
    emit(state.copyWith(
      suggested: event.value,
    ));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<LanguageState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _changeRadioButton2(
    ChangeRadioButton2Event event,
    Emitter<LanguageState> emit,
  ) {
    emit(state.copyWith(
      bengali: event.value,
    ));
  }

  _changeRadioButton3(
    ChangeRadioButton3Event event,
    Emitter<LanguageState> emit,
  ) {
    emit(state.copyWith(
      radioGroup1: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_english_us", "lbl_english_uk"];
  }

  List<String> fillRadioList1() {
    return ["lbl_russian", "lbl_indonesia"];
  }

  _onInitialize(
    LanguageInitialEvent event,
    Emitter<LanguageState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      suggested: "",
      radioGroup: "",
      bengali: "",
      radioGroup1: "",
    ));
    emit(state.copyWith(
        languageModelObj: state.languageModelObj?.copyWith(
      radioList: fillRadioList(),
      radioList1: fillRadioList1(),
    )));
  }
}
