import '../../../core/app_export.dart';/// This class is used in the [eventlist_item_widget] screen.
class EventlistItemModel {EventlistItemModel({this.iconButton, this.eventText, this.photographerText, this.id, }) { iconButton = iconButton  ?? ImageConstant.imgGroup342;eventText = eventText  ?? "900+ Events";photographerText = photographerText  ?? "Photographer";id = id  ?? ""; }

String? iconButton;

String? eventText;

String? photographerText;

String? id;

 }
