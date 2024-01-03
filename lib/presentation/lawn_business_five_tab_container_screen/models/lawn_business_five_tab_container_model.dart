// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'lawnbusinessfivetabcontainer_item_model.dart';/// This class defines the variables used in the [lawn_business_five_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LawnBusinessFiveTabContainerModel extends Equatable {LawnBusinessFiveTabContainerModel({this.lawnbusinessfivetabcontainerItemList = const []}) {  }

List<LawnbusinessfivetabcontainerItemModel> lawnbusinessfivetabcontainerItemList;

LawnBusinessFiveTabContainerModel copyWith({List<LawnbusinessfivetabcontainerItemModel>? lawnbusinessfivetabcontainerItemList}) { return LawnBusinessFiveTabContainerModel(
lawnbusinessfivetabcontainerItemList : lawnbusinessfivetabcontainerItemList ?? this.lawnbusinessfivetabcontainerItemList,
); } 
@override List<Object?> get props => [lawnbusinessfivetabcontainerItemList];
 }
