// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'fairylightsgrid1_item_model.dart';/// This class defines the variables used in the [invites_video_invites_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InvitesVideoInvitesOneModel extends Equatable {InvitesVideoInvitesOneModel({this.fairylightsgrid1ItemList = const []}) {  }

List<Fairylightsgrid1ItemModel> fairylightsgrid1ItemList;

InvitesVideoInvitesOneModel copyWith({List<Fairylightsgrid1ItemModel>? fairylightsgrid1ItemList}) { return InvitesVideoInvitesOneModel(
fairylightsgrid1ItemList : fairylightsgrid1ItemList ?? this.fairylightsgrid1ItemList,
); } 
@override List<Object?> get props => [fairylightsgrid1ItemList];
 }
