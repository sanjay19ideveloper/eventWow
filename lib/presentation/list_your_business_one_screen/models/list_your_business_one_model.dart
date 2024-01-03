// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:sanjay_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [list_your_business_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ListYourBusinessOneModel extends Equatable {ListYourBusinessOneModel({this.dropdownItemList = const [], this.dropdownItemList1 = const [], this.dropdownItemList2 = const [], this.dropdownItemList3 = const [], this.dropdownItemList4 = const [], this.dropdownItemList5 = const [], this.dropdownItemList6 = const [], this.dropdownItemList7 = const [], this.dropdownItemList8 = const [], this.dropdownItemList9 = const [], this.dropdownItemList10 = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<SelectionPopupModel> dropdownItemList1;

List<SelectionPopupModel> dropdownItemList2;

List<SelectionPopupModel> dropdownItemList3;

List<SelectionPopupModel> dropdownItemList4;

List<SelectionPopupModel> dropdownItemList5;

List<SelectionPopupModel> dropdownItemList6;

List<SelectionPopupModel> dropdownItemList7;

List<SelectionPopupModel> dropdownItemList8;

List<SelectionPopupModel> dropdownItemList9;

List<SelectionPopupModel> dropdownItemList10;

ListYourBusinessOneModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<SelectionPopupModel>? dropdownItemList1, List<SelectionPopupModel>? dropdownItemList2, List<SelectionPopupModel>? dropdownItemList3, List<SelectionPopupModel>? dropdownItemList4, List<SelectionPopupModel>? dropdownItemList5, List<SelectionPopupModel>? dropdownItemList6, List<SelectionPopupModel>? dropdownItemList7, List<SelectionPopupModel>? dropdownItemList8, List<SelectionPopupModel>? dropdownItemList9, List<SelectionPopupModel>? dropdownItemList10, }) { return ListYourBusinessOneModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
dropdownItemList2 : dropdownItemList2 ?? this.dropdownItemList2,
dropdownItemList3 : dropdownItemList3 ?? this.dropdownItemList3,
dropdownItemList4 : dropdownItemList4 ?? this.dropdownItemList4,
dropdownItemList5 : dropdownItemList5 ?? this.dropdownItemList5,
dropdownItemList6 : dropdownItemList6 ?? this.dropdownItemList6,
dropdownItemList7 : dropdownItemList7 ?? this.dropdownItemList7,
dropdownItemList8 : dropdownItemList8 ?? this.dropdownItemList8,
dropdownItemList9 : dropdownItemList9 ?? this.dropdownItemList9,
dropdownItemList10 : dropdownItemList10 ?? this.dropdownItemList10,
); } 
@override List<Object?> get props => [dropdownItemList,dropdownItemList1,dropdownItemList2,dropdownItemList3,dropdownItemList4,dropdownItemList5,dropdownItemList6,dropdownItemList7,dropdownItemList8,dropdownItemList9,dropdownItemList10];
 }
