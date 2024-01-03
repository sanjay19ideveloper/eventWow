// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'gridsection_item_model.dart';/// This class defines the variables used in the [invites_wedding_cards_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InvitesWeddingCardsModel extends Equatable {InvitesWeddingCardsModel({this.gridsectionItemList = const []}) {  }

List<GridsectionItemModel> gridsectionItemList;

InvitesWeddingCardsModel copyWith({List<GridsectionItemModel>? gridsectionItemList}) { return InvitesWeddingCardsModel(
gridsectionItemList : gridsectionItemList ?? this.gridsectionItemList,
); } 
@override List<Object?> get props => [gridsectionItemList];
 }
