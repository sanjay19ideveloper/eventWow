// ignore_for_file: must_be_immutable

part of 'list_your_business_bloc.dart';

/// Represents the state of ListYourBusiness in the application.
class ListYourBusinessState extends Equatable {
  ListYourBusinessState({
    this.descriptionvalueController,
    this.descriptionController,
    this.paymentTermsController,
    this.topMostCompletedController,
    this.specialPackagesController,
    this.yourWorkKeyFeaturesController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectedDropDownValue3,
    this.listYourBusinessModelObj,
  });

  TextEditingController? descriptionvalueController;

  TextEditingController? descriptionController;

  TextEditingController? paymentTermsController;

  TextEditingController? topMostCompletedController;

  TextEditingController? specialPackagesController;

  TextEditingController? yourWorkKeyFeaturesController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  ListYourBusinessModel? listYourBusinessModelObj;

  @override
  List<Object?> get props => [
        descriptionvalueController,
        descriptionController,
        paymentTermsController,
        topMostCompletedController,
        specialPackagesController,
        yourWorkKeyFeaturesController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedDropDownValue3,
        listYourBusinessModelObj,
      ];
  ListYourBusinessState copyWith({
    TextEditingController? descriptionvalueController,
    TextEditingController? descriptionController,
    TextEditingController? paymentTermsController,
    TextEditingController? topMostCompletedController,
    TextEditingController? specialPackagesController,
    TextEditingController? yourWorkKeyFeaturesController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    ListYourBusinessModel? listYourBusinessModelObj,
  }) {
    return ListYourBusinessState(
      descriptionvalueController:
          descriptionvalueController ?? this.descriptionvalueController,
      descriptionController:
          descriptionController ?? this.descriptionController,
      paymentTermsController:
          paymentTermsController ?? this.paymentTermsController,
      topMostCompletedController:
          topMostCompletedController ?? this.topMostCompletedController,
      specialPackagesController:
          specialPackagesController ?? this.specialPackagesController,
      yourWorkKeyFeaturesController:
          yourWorkKeyFeaturesController ?? this.yourWorkKeyFeaturesController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
          selectedDropDownValue3 ?? this.selectedDropDownValue3,
      listYourBusinessModelObj:
          listYourBusinessModelObj ?? this.listYourBusinessModelObj,
    );
  }
}
