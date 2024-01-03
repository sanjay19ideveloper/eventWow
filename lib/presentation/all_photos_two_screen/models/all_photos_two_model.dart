// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'allphotostwo_item_model.dart';/// This class defines the variables used in the [all_photos_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AllPhotosTwoModel extends Equatable {AllPhotosTwoModel({this.allphotostwoItemList = const []}) {  }

List<AllphotostwoItemModel> allphotostwoItemList;

AllPhotosTwoModel copyWith({List<AllphotostwoItemModel>? allphotostwoItemList}) { return AllPhotosTwoModel(
allphotostwoItemList : allphotostwoItemList ?? this.allphotostwoItemList,
); } 
@override List<Object?> get props => [allphotostwoItemList];
 }
