// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'banquetlist_item_model.dart';/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel extends Equatable {SearchModel({this.banquetlistItemList = const []}) {  }

List<BanquetlistItemModel> banquetlistItemList;

SearchModel copyWith({List<BanquetlistItemModel>? banquetlistItemList}) { return SearchModel(
banquetlistItemList : banquetlistItemList ?? this.banquetlistItemList,
); } 
@override List<Object?> get props => [banquetlistItemList];
 }
