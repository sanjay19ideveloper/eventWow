import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/list_your_business_one_screen/models/list_your_business_one_model.dart';
part 'list_your_business_one_event.dart';
part 'list_your_business_one_state.dart';

/// A bloc that manages the state of a ListYourBusinessOne according to the event that is dispatched to it.
class ListYourBusinessOneBloc
    extends Bloc<ListYourBusinessOneEvent, ListYourBusinessOneState> {
  ListYourBusinessOneBloc(ListYourBusinessOneState initialState)
      : super(initialState) {
    on<ListYourBusinessOneInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
    on<ChangeDropDown2Event>(_changeDropDown2);
    on<ChangeDropDown3Event>(_changeDropDown3);
    on<ChangeDropDown4Event>(_changeDropDown4);
    on<ChangeDropDown5Event>(_changeDropDown5);
    on<ChangeDropDown6Event>(_changeDropDown6);
    on<ChangeDropDown7Event>(_changeDropDown7);
    on<ChangeDropDown8Event>(_changeDropDown8);
    on<ChangeDropDown9Event>(_changeDropDown9);
    on<ChangeDropDown10Event>(_changeDropDown10);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<ListYourBusinessOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<ListYourBusinessOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue1: event.value,
    ));
  }

  _changeDropDown2(
    ChangeDropDown2Event event,
    Emitter<ListYourBusinessOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue2: event.value,
    ));
  }

  _changeDropDown3(
    ChangeDropDown3Event event,
    Emitter<ListYourBusinessOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue3: event.value,
    ));
  }

  _changeDropDown4(
    ChangeDropDown4Event event,
    Emitter<ListYourBusinessOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue4: event.value,
    ));
  }

  _changeDropDown5(
    ChangeDropDown5Event event,
    Emitter<ListYourBusinessOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue5: event.value,
    ));
  }

  _changeDropDown6(
    ChangeDropDown6Event event,
    Emitter<ListYourBusinessOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue6: event.value,
    ));
  }

  _changeDropDown7(
    ChangeDropDown7Event event,
    Emitter<ListYourBusinessOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue7: event.value,
    ));
  }

  _changeDropDown8(
    ChangeDropDown8Event event,
    Emitter<ListYourBusinessOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue8: event.value,
    ));
  }

  _changeDropDown9(
    ChangeDropDown9Event event,
    Emitter<ListYourBusinessOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue9: event.value,
    ));
  }

  _changeDropDown10(
    ChangeDropDown10Event event,
    Emitter<ListYourBusinessOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue10: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList2() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList3() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList4() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList5() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList6() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList7() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList8() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList9() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList10() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    ListYourBusinessOneInitialEvent event,
    Emitter<ListYourBusinessOneState> emit,
  ) async {
    emit(state.copyWith(
      enterHereController: TextEditingController(),
      chooseController: TextEditingController(),
      descriptionController: TextEditingController(),
      amountController: TextEditingController(),
      listYourBusinessController: TextEditingController(),
    ));
    emit(state.copyWith(
        listYourBusinessOneModelObj:
            state.listYourBusinessOneModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
      dropdownItemList2: fillDropdownItemList2(),
      dropdownItemList3: fillDropdownItemList3(),
      dropdownItemList4: fillDropdownItemList4(),
      dropdownItemList5: fillDropdownItemList5(),
      dropdownItemList6: fillDropdownItemList6(),
      dropdownItemList7: fillDropdownItemList7(),
      dropdownItemList8: fillDropdownItemList8(),
      dropdownItemList9: fillDropdownItemList9(),
      dropdownItemList10: fillDropdownItemList10(),
    )));
  }
}
