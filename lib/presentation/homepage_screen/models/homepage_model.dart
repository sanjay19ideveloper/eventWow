// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'rewindlist_item_model.dart';import 'widget_item_model.dart';import 'banquettext_item_model.dart';import 'userprofilelist1_item_model.dart';import 'rectangle_item_model.dart';/// This class defines the variables used in the [homepage_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageModel extends Equatable {HomepageModel({this.rewindlistItemList = const [], this.widgetItemList = const [], this.banquettextItemList = const [], this.userprofilelist1ItemList = const [], this.rectangleItemList = const [], }) {  }

List<RewindlistItemModel> rewindlistItemList;

List<WidgetItemModel> widgetItemList;

List<BanquettextItemModel> banquettextItemList;

List<Userprofilelist1ItemModel> userprofilelist1ItemList;

List<RectangleItemModel> rectangleItemList;

HomepageModel copyWith({List<RewindlistItemModel>? rewindlistItemList, List<WidgetItemModel>? widgetItemList, List<BanquettextItemModel>? banquettextItemList, List<Userprofilelist1ItemModel>? userprofilelist1ItemList, List<RectangleItemModel>? rectangleItemList, }) { return HomepageModel(
rewindlistItemList : rewindlistItemList ?? this.rewindlistItemList,
widgetItemList : widgetItemList ?? this.widgetItemList,
banquettextItemList : banquettextItemList ?? this.banquettextItemList,
userprofilelist1ItemList : userprofilelist1ItemList ?? this.userprofilelist1ItemList,
rectangleItemList : rectangleItemList ?? this.rectangleItemList,
); } 
@override List<Object?> get props => [rewindlistItemList,widgetItemList,banquettextItemList,userprofilelist1ItemList,rectangleItemList];
 }
