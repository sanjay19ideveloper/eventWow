// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile7_item_model.dart';/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel extends Equatable {NotificationsModel({this.userprofile7ItemList = const []}) {  }

List<Userprofile7ItemModel> userprofile7ItemList;

NotificationsModel copyWith({List<Userprofile7ItemModel>? userprofile7ItemList}) { return NotificationsModel(
userprofile7ItemList : userprofile7ItemList ?? this.userprofile7ItemList,
); } 
@override List<Object?> get props => [userprofile7ItemList];
 }
