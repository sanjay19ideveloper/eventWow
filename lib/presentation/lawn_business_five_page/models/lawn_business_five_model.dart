// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'lawngrid_item_model.dart';/// This class defines the variables used in the [lawn_business_five_page],
/// and is typically used to hold data that is passed between different parts of the application.
class LawnBusinessFiveModel extends Equatable {LawnBusinessFiveModel({this.lawngridItemList = const []}) {  }

List<LawngridItemModel> lawngridItemList;

LawnBusinessFiveModel copyWith({List<LawngridItemModel>? lawngridItemList}) { return LawnBusinessFiveModel(
lawngridItemList : lawngridItemList ?? this.lawngridItemList,
); } 
@override List<Object?> get props => [lawngridItemList];
 }
