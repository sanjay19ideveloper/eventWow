// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:sanjay_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [list_your_business_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ListYourBusinessModel extends Equatable {ListYourBusinessModel({this.dropdownItemList = const [], this.dropdownItemList1 = const [], this.dropdownItemList2 = const [], this.dropdownItemList3 = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<SelectionPopupModel> dropdownItemList1;

List<SelectionPopupModel> dropdownItemList2;

List<SelectionPopupModel> dropdownItemList3;

ListYourBusinessModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<SelectionPopupModel>? dropdownItemList1, List<SelectionPopupModel>? dropdownItemList2, List<SelectionPopupModel>? dropdownItemList3, }) { return ListYourBusinessModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
dropdownItemList2 : dropdownItemList2 ?? this.dropdownItemList2,
dropdownItemList3 : dropdownItemList3 ?? this.dropdownItemList3,
); } 
@override List<Object?> get props => [dropdownItemList,dropdownItemList1,dropdownItemList2,dropdownItemList3];
 }
