// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilegrid_item_model.dart';/// This class defines the variables used in the [all_top_selling_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AllTopSellingOneModel extends Equatable {AllTopSellingOneModel({this.userprofilegridItemList = const []}) {  }

List<UserprofilegridItemModel> userprofilegridItemList;

AllTopSellingOneModel copyWith({List<UserprofilegridItemModel>? userprofilegridItemList}) { return AllTopSellingOneModel(
userprofilegridItemList : userprofilegridItemList ?? this.userprofilegridItemList,
); } 
@override List<Object?> get props => [userprofilegridItemList];
 }
