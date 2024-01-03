// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile8_item_model.dart';/// This class defines the variables used in the [all_top_selling_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AllTopSellingModel extends Equatable {AllTopSellingModel({this.userprofile8ItemList = const []}) {  }

List<Userprofile8ItemModel> userprofile8ItemList;

AllTopSellingModel copyWith({List<Userprofile8ItemModel>? userprofile8ItemList}) { return AllTopSellingModel(
userprofile8ItemList : userprofile8ItemList ?? this.userprofile8ItemList,
); } 
@override List<Object?> get props => [userprofile8ItemList];
 }
