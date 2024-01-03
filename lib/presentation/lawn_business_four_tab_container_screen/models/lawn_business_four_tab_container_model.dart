// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile4_item_model.dart';import 'userprofilelist_item_model.dart';import 'lawnbusinessfourtabcontainer_item_model.dart';/// This class defines the variables used in the [lawn_business_four_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LawnBusinessFourTabContainerModel extends Equatable {LawnBusinessFourTabContainerModel({this.userprofile4ItemList = const [], this.userprofilelistItemList = const [], this.lawnbusinessfourtabcontainerItemList = const [], }) {  }

List<Userprofile4ItemModel> userprofile4ItemList;

List<UserprofilelistItemModel> userprofilelistItemList;

List<LawnbusinessfourtabcontainerItemModel> lawnbusinessfourtabcontainerItemList;

LawnBusinessFourTabContainerModel copyWith({List<Userprofile4ItemModel>? userprofile4ItemList, List<UserprofilelistItemModel>? userprofilelistItemList, List<LawnbusinessfourtabcontainerItemModel>? lawnbusinessfourtabcontainerItemList, }) { return LawnBusinessFourTabContainerModel(
userprofile4ItemList : userprofile4ItemList ?? this.userprofile4ItemList,
userprofilelistItemList : userprofilelistItemList ?? this.userprofilelistItemList,
lawnbusinessfourtabcontainerItemList : lawnbusinessfourtabcontainerItemList ?? this.lawnbusinessfourtabcontainerItemList,
); } 
@override List<Object?> get props => [userprofile4ItemList,userprofilelistItemList,lawnbusinessfourtabcontainerItemList];
 }
