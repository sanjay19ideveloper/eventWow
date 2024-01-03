// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilesection_item_model.dart';/// This class defines the variables used in the [lawn_business_four_page],
/// and is typically used to hold data that is passed between different parts of the application.
class LawnBusinessFourModel extends Equatable {LawnBusinessFourModel({this.userprofilesectionItemList = const []}) {  }

List<UserprofilesectionItemModel> userprofilesectionItemList;

LawnBusinessFourModel copyWith({List<UserprofilesectionItemModel>? userprofilesectionItemList}) { return LawnBusinessFourModel(
userprofilesectionItemList : userprofilesectionItemList ?? this.userprofilesectionItemList,
); } 
@override List<Object?> get props => [userprofilesectionItemList];
 }
