// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilegrid1_item_model.dart';import 'subtractgrid1_item_model.dart';import 'userprofile12_item_model.dart';import 'userprofile13_item_model.dart';/// This class defines the variables used in the [service_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ServiceDetailModel extends Equatable {ServiceDetailModel({this.userprofilegrid1ItemList = const [], this.subtractgrid1ItemList = const [], this.userprofile12ItemList = const [], this.userprofile13ItemList = const [], }) {  }

List<Userprofilegrid1ItemModel> userprofilegrid1ItemList;

List<Subtractgrid1ItemModel> subtractgrid1ItemList;

List<Userprofile12ItemModel> userprofile12ItemList;

List<Userprofile13ItemModel> userprofile13ItemList;

ServiceDetailModel copyWith({List<Userprofilegrid1ItemModel>? userprofilegrid1ItemList, List<Subtractgrid1ItemModel>? subtractgrid1ItemList, List<Userprofile12ItemModel>? userprofile12ItemList, List<Userprofile13ItemModel>? userprofile13ItemList, }) { return ServiceDetailModel(
userprofilegrid1ItemList : userprofilegrid1ItemList ?? this.userprofilegrid1ItemList,
subtractgrid1ItemList : subtractgrid1ItemList ?? this.subtractgrid1ItemList,
userprofile12ItemList : userprofile12ItemList ?? this.userprofile12ItemList,
userprofile13ItemList : userprofile13ItemList ?? this.userprofile13ItemList,
); } 
@override List<Object?> get props => [userprofilegrid1ItemList,subtractgrid1ItemList,userprofile12ItemList,userprofile13ItemList];
 }
