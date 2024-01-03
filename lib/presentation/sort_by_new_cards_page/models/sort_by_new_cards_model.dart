// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'gridsection1_item_model.dart';/// This class defines the variables used in the [sort_by_new_cards_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SortByNewCardsModel extends Equatable {SortByNewCardsModel({this.gridsection1ItemList = const []}) {  }

List<Gridsection1ItemModel> gridsection1ItemList;

SortByNewCardsModel copyWith({List<Gridsection1ItemModel>? gridsection1ItemList}) { return SortByNewCardsModel(
gridsection1ItemList : gridsection1ItemList ?? this.gridsection1ItemList,
); } 
@override List<Object?> get props => [gridsection1ItemList];
 }
