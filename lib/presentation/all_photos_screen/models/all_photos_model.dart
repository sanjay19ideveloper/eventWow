// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'allphotos_item_model.dart';/// This class defines the variables used in the [all_photos_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AllPhotosModel extends Equatable {AllPhotosModel({this.allphotosItemList = const []}) {  }

List<AllphotosItemModel> allphotosItemList;

AllPhotosModel copyWith({List<AllphotosItemModel>? allphotosItemList}) { return AllPhotosModel(
allphotosItemList : allphotosItemList ?? this.allphotosItemList,
); } 
@override List<Object?> get props => [allphotosItemList];
 }
