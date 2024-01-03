// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile5_item_model.dart';import 'subtractgrid_item_model.dart';/// This class defines the variables used in the [lawn_business_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LawnBusinessTwoModel extends Equatable {LawnBusinessTwoModel({this.userprofile5ItemList = const [], this.subtractgridItemList = const [], }) {  }

List<Userprofile5ItemModel> userprofile5ItemList;

List<SubtractgridItemModel> subtractgridItemList;

LawnBusinessTwoModel copyWith({List<Userprofile5ItemModel>? userprofile5ItemList, List<SubtractgridItemModel>? subtractgridItemList, }) { return LawnBusinessTwoModel(
userprofile5ItemList : userprofile5ItemList ?? this.userprofile5ItemList,
subtractgridItemList : subtractgridItemList ?? this.subtractgridItemList,
); } 
@override List<Object?> get props => [userprofile5ItemList,subtractgridItemList];
 }
