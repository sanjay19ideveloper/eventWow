// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'text_item_model.dart';import 'petalsoflovetext_item_model.dart';import 'savethedatecards_item_model.dart';/// This class defines the variables used in the [invites_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InvitesModel extends Equatable {InvitesModel({this.textItemList = const [], this.petalsoflovetextItemList = const [], this.savethedatecardsItemList = const [], }) {  }

List<TextItemModel> textItemList;

List<PetalsoflovetextItemModel> petalsoflovetextItemList;

List<SavethedatecardsItemModel> savethedatecardsItemList;

InvitesModel copyWith({List<TextItemModel>? textItemList, List<PetalsoflovetextItemModel>? petalsoflovetextItemList, List<SavethedatecardsItemModel>? savethedatecardsItemList, }) { return InvitesModel(
textItemList : textItemList ?? this.textItemList,
petalsoflovetextItemList : petalsoflovetextItemList ?? this.petalsoflovetextItemList,
savethedatecardsItemList : savethedatecardsItemList ?? this.savethedatecardsItemList,
); } 
@override List<Object?> get props => [textItemList,petalsoflovetextItemList,savethedatecardsItemList];
 }
