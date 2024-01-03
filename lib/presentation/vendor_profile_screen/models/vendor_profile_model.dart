// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'eventlist_item_model.dart';/// This class defines the variables used in the [vendor_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VendorProfileModel extends Equatable {VendorProfileModel({this.eventlistItemList = const []}) {  }

List<EventlistItemModel> eventlistItemList;

VendorProfileModel copyWith({List<EventlistItemModel>? eventlistItemList}) { return VendorProfileModel(
eventlistItemList : eventlistItemList ?? this.eventlistItemList,
); } 
@override List<Object?> get props => [eventlistItemList];
 }
