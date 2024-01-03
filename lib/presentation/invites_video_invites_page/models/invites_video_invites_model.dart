// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'fairylightsgrid_item_model.dart';/// This class defines the variables used in the [invites_video_invites_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InvitesVideoInvitesModel extends Equatable {InvitesVideoInvitesModel({this.fairylightsgridItemList = const []}) {  }

List<FairylightsgridItemModel> fairylightsgridItemList;

InvitesVideoInvitesModel copyWith({List<FairylightsgridItemModel>? fairylightsgridItemList}) { return InvitesVideoInvitesModel(
fairylightsgridItemList : fairylightsgridItemList ?? this.fairylightsgridItemList,
); } 
@override List<Object?> get props => [fairylightsgridItemList];
 }
