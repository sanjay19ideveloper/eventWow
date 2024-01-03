// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'locationinfo_item_model.dart';/// This class defines the variables used in the [location_access_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class LocationAccessModel extends Equatable {LocationAccessModel({this.locationinfoItemList = const []}) {  }

List<LocationinfoItemModel> locationinfoItemList;

LocationAccessModel copyWith({List<LocationinfoItemModel>? locationinfoItemList}) { return LocationAccessModel(
locationinfoItemList : locationinfoItemList ?? this.locationinfoItemList,
); } 
@override List<Object?> get props => [locationinfoItemList];
 }
