// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'previewcard_item_model.dart';/// This class defines the variables used in the [preview_card_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PreviewCardModel extends Equatable {PreviewCardModel({this.previewcardItemList = const []}) {  }

List<PreviewcardItemModel> previewcardItemList;

PreviewCardModel copyWith({List<PreviewcardItemModel>? previewcardItemList}) { return PreviewCardModel(
previewcardItemList : previewcardItemList ?? this.previewcardItemList,
); } 
@override List<Object?> get props => [previewcardItemList];
 }
