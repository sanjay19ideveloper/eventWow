// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'banquetcomponent_item_model.dart';/// This class defines the variables used in the [my_services_premium_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyServicesPremiumModel extends Equatable {MyServicesPremiumModel({this.banquetcomponentItemList = const []}) {  }

List<BanquetcomponentItemModel> banquetcomponentItemList;

MyServicesPremiumModel copyWith({List<BanquetcomponentItemModel>? banquetcomponentItemList}) { return MyServicesPremiumModel(
banquetcomponentItemList : banquetcomponentItemList ?? this.banquetcomponentItemList,
); } 
@override List<Object?> get props => [banquetcomponentItemList];
 }
