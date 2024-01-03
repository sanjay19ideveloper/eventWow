// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile11_item_model.dart';/// This class defines the variables used in the [chats_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatsModel extends Equatable {ChatsModel({this.userprofile11ItemList = const []}) {  }

List<Userprofile11ItemModel> userprofile11ItemList;

ChatsModel copyWith({List<Userprofile11ItemModel>? userprofile11ItemList}) { return ChatsModel(
userprofile11ItemList : userprofile11ItemList ?? this.userprofile11ItemList,
); } 
@override List<Object?> get props => [userprofile11ItemList];
 }
