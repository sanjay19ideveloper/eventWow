// ignore_for_file: must_be_immutable

part of 'list_your_business_one_bloc.dart';

/// Represents the state of ListYourBusinessOne in the application.
class ListYourBusinessOneState extends Equatable {
  ListYourBusinessOneState({
    this.enterHereController,
    this.chooseController,
    this.descriptionController,
    this.amountController,
    this.listYourBusinessController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectedDropDownValue3,
    this.selectedDropDownValue4,
    this.selectedDropDownValue5,
    this.selectedDropDownValue6,
    this.selectedDropDownValue7,
    this.selectedDropDownValue8,
    this.selectedDropDownValue9,
    this.selectedDropDownValue10,
    this.listYourBusinessOneModelObj,
  });

  TextEditingController? enterHereController;

  TextEditingController? chooseController;

  TextEditingController? descriptionController;

  TextEditingController? amountController;

  TextEditingController? listYourBusinessController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  SelectionPopupModel? selectedDropDownValue5;

  SelectionPopupModel? selectedDropDownValue6;

  SelectionPopupModel? selectedDropDownValue7;

  SelectionPopupModel? selectedDropDownValue8;

  SelectionPopupModel? selectedDropDownValue9;

  SelectionPopupModel? selectedDropDownValue10;

  ListYourBusinessOneModel? listYourBusinessOneModelObj;

  @override
  List<Object?> get props => [
        enterHereController,
        chooseController,
        descriptionController,
        amountController,
        listYourBusinessController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedDropDownValue3,
        selectedDropDownValue4,
        selectedDropDownValue5,
        selectedDropDownValue6,
        selectedDropDownValue7,
        selectedDropDownValue8,
        selectedDropDownValue9,
        selectedDropDownValue10,
        listYourBusinessOneModelObj,
      ];
  ListYourBusinessOneState copyWith({
    TextEditingController? enterHereController,
    TextEditingController? chooseController,
    TextEditingController? descriptionController,
    TextEditingController? amountController,
    TextEditingController? listYourBusinessController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    SelectionPopupModel? selectedDropDownValue4,
    SelectionPopupModel? selectedDropDownValue5,
    SelectionPopupModel? selectedDropDownValue6,
    SelectionPopupModel? selectedDropDownValue7,
    SelectionPopupModel? selectedDropDownValue8,
    SelectionPopupModel? selectedDropDownValue9,
    SelectionPopupModel? selectedDropDownValue10,
    ListYourBusinessOneModel? listYourBusinessOneModelObj,
  }) {
    return ListYourBusinessOneState(
      enterHereController: enterHereController ?? this.enterHereController,
      chooseController: chooseController ?? this.chooseController,
      descriptionController:
          descriptionController ?? this.descriptionController,
      amountController: amountController ?? this.amountController,
      listYourBusinessController:
          listYourBusinessController ?? this.listYourBusinessController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
          selectedDropDownValue3 ?? this.selectedDropDownValue3,
      selectedDropDownValue4:
          selectedDropDownValue4 ?? this.selectedDropDownValue4,
      selectedDropDownValue5:
          selectedDropDownValue5 ?? this.selectedDropDownValue5,
      selectedDropDownValue6:
          selectedDropDownValue6 ?? this.selectedDropDownValue6,
      selectedDropDownValue7:
          selectedDropDownValue7 ?? this.selectedDropDownValue7,
      selectedDropDownValue8:
          selectedDropDownValue8 ?? this.selectedDropDownValue8,
      selectedDropDownValue9:
          selectedDropDownValue9 ?? this.selectedDropDownValue9,
      selectedDropDownValue10:
          selectedDropDownValue10 ?? this.selectedDropDownValue10,
      listYourBusinessOneModelObj:
          listYourBusinessOneModelObj ?? this.listYourBusinessOneModelObj,
    );
  }
}
