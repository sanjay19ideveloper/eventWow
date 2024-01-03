// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'verification_item_model.dart';/// This class defines the variables used in the [verification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VerificationModel extends Equatable {VerificationModel({this.verificationItemList = const []}) {  }

List<VerificationItemModel> verificationItemList;

VerificationModel copyWith({List<VerificationItemModel>? verificationItemList}) { return VerificationModel(
verificationItemList : verificationItemList ?? this.verificationItemList,
); } 
@override List<Object?> get props => [verificationItemList];
 }
