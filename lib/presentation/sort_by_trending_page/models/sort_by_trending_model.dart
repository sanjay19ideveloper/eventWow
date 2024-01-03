// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'gridsection2_item_model.dart';/// This class defines the variables used in the [sort_by_trending_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SortByTrendingModel extends Equatable {SortByTrendingModel({this.gridsection2ItemList = const []}) {  }

List<Gridsection2ItemModel> gridsection2ItemList;

SortByTrendingModel copyWith({List<Gridsection2ItemModel>? gridsection2ItemList}) { return SortByTrendingModel(
gridsection2ItemList : gridsection2ItemList ?? this.gridsection2ItemList,
); } 
@override List<Object?> get props => [gridsection2ItemList];
 }
